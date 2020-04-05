/* Copyright (c) 2017 - 2019 LiteSpeed Technologies Inc.  See LICENSE. */
/*
 * lsquic_packet_out.h -- Structure and routines dealing with packet_out
 */

#ifndef LSQUIC_PACKET_OUT_H
#define LSQUIC_PACKET_OUT_H 1

#include <sys/queue.h>

struct malo;
struct lsquic_conn;
struct lsquic_engine_public;
struct lsquic_mm;
struct lsquic_stream;
struct network_path;
struct parse_funcs;
struct bwp_state;

/* Each stream_rec is associated with one packet_out.  packet_out can have
 * zero or more stream_rec structures.  stream_rec keeps a pointer to a stream
 * that has STREAM or RST_STREAM frames inside packet_out.  `sr_frame_type'
 * specifies the type of the frame; if this value is zero, values of the
 * other struct members are not valid.  `sr_off' indicates where inside
 * packet_out->po_data the frame begins and `sr_len' is its length.
 *
 * We need this information for three reasons:
 *   1. A stream is not destroyed until all of its STREAM and RST_STREAM
 *      frames are acknowledged.  This is to make sure that we do not exceed
 *      maximum allowed number of streams.
 *   2. When a packet is resubmitted, STREAM frames for a stream that has
 *      been reset are not to be resubmitted.
 *   3. A buffered packet may have to be split before it is scheduled (this
 *      occurs if we guessed incorrectly the number of bytes required to
 *      encode the packet number and the actual number would make packet
 *      larger than the max).
 *
 */
struct stream_rec {
    struct lsquic_stream    *sr_stream;
    unsigned short           sr_off,
                             sr_len;
    enum quic_frame_type     sr_frame_type:16;
};

#define srec_taken(srec) ((srec)->sr_frame_type)

struct stream_rec_arr {
    TAILQ_ENTRY(stream_rec_arr)     next_stream_rec_arr;
    struct stream_rec               srecs[
      ( 64                              /* Efficient size for malo allocator */
      - sizeof(TAILQ_ENTRY(stream_rec)) /* next_stream_rec_arr */
      ) / sizeof(struct stream_rec)
    ];
};

TAILQ_HEAD(stream_rec_arr_tailq, stream_rec_arr);


typedef struct lsquic_packet_out
{
    /* `po_next' is used for packets_out, unacked_packets and expired_packets
     * lists.
     */
    TAILQ_ENTRY(lsquic_packet_out)
                       po_next;
    lsquic_time_t      po_sent;       /* Time sent */
    lsquic_packno_t    po_packno;
    lsquic_packno_t    po_ack2ed;       /* If packet has ACK frame, value of
                                         * largest acked in it.
                                         */
    struct lsquic_packet_out
                      *po_loss_chain;   /* Circular linked list */

    enum quic_ft_bit   po_frame_types;  /* Bitmask of QUIC_FRAME_* */
    enum packet_out_flags {
            /* TODO XXX Phase out PO_MINI in favor of a more specialized flag:
             * we only need an indicator that a packet contains STREAM frames
             * but no associated srecs.  This type of packets in only created
             * by GQUIC mini conn.
             */
        PO_MINI     = (1 << 0),         /* Allocated by mini connection */
        PO_HELLO    = (1 << 1),         /* Packet contains SHLO or CHLO data */
        PO_SENT     = (1 << 2),         /* Packet has been sent (mini only) */
        PO_ENCRYPTED= (1 << 3),         /* po_enc_data has encrypted data */
        PO_SREC_ARR = (1 << 4),
#define POBIT_SHIFT 5
        PO_BITS_0   = (1 << 5),         /* PO_BITS_0 and PO_BITS_1 encode the */
        PO_BITS_1   = (1 << 6),         /*   packet number length.  See macros below. */
        PO_NONCE    = (1 << 7),         /* Use value in `po_nonce' to generate header */
        PO_VERSION  = (1 << 8),         /* Use value in `po_ver_tag' to generate header */
        PO_CONN_ID  = (1 << 9),         /* Include connection ID in public header */
        PO_REPACKNO = (1 <<10),         /* Regenerate packet number */
        PO_NOENCRYPT= (1 <<11),         /* Do not encrypt data in po_data */
        PO_VERNEG   = (1 <<12),         /* Version negotiation packet. */
        PO_STREAM_END
                    = (1 <<13),         /* STREAM frame reaches the end of the packet: no
                                         * further writes are allowed.
                                         */
        PO_SCHED    = (1 <<14),         /* On scheduled queue */
        PO_SENT_SZ  = (1 <<15),
        PO_LONGHEAD = (1 <<16),         /* Only used for Q044 */
#define POIPv6_SHIFT 20
        PO_IPv6     = (1 <<20),         /* Set if pmi_allocate was passed is_ipv6=1,
                                         *   otherwise unset.
                                         */
        PO_LIMITED  = (1 <<21),         /* Used to credit sc_next_limit if needed. */
#define POPNS_SHIFT 22
        PO_PNS_HSK  = (1 <<22),         /* PNS bits contain the value of the */
        PO_PNS_APP  = (1 <<23),         /*   packet number space. */
        PO_RETRY    = (1 <<24),         /* Retry packet */
        PO_RETX     = (1 <<25),         /* Retransmitted packet: don't append to it */
        PO_UNUSED26 = (1 <<26),         /* Unused */
        PO_LOSS_REC = (1 <<27),         /* This structure is a loss record */
        /* Only one of PO_SCHED, PO_UNACKED, or PO_LOST can be set.  If pressed
         * for room in the enum, we can switch to using two bits to represent
         * this information.
         */
        PO_UNACKED  = (1 <<28),         /* On unacked queue */
        PO_LOST     = (1 <<29),         /* On lost queue */
#define POSPIN_SHIFT 30
        PO_SPIN_BIT = (1 <<30),         /* Value of the spin bit */
    }                  po_flags;
    unsigned short     po_data_sz;      /* Number of usable bytes in data */
    unsigned short     po_enc_data_sz;  /* Number of usable bytes in data */
    unsigned short     po_sent_sz;      /* If PO_SENT_SZ is set, real size of sent buffer. */
    unsigned short     po_regen_sz;     /* Number of bytes at the beginning
                                         * of data containing bytes that are
                                         * not to be retransmitted, e.g. ACK
                                         * frames.
                                         */
    unsigned short     po_n_alloc;      /* Total number of bytes allocated in po_data */
    unsigned short     po_token_len;
    enum header_type   po_header_type:8;
    unsigned char      po_path_id;
    enum {
        POL_GQUIC    = 1 << 0,         /* Used for logging */
#define POLEV_SHIFT 1
        POL_ELBIT_0  = 1 << 1,         /* EL bits encode the crypto level. */
        POL_ELBIT_1  = 1 << 2,
#define POKP_SHIFT 3
        POL_KEY_PHASE= 1 << 3,         /* Used for logging */
#define POECN_SHIFT 4
        POL_ECNBIT_0 = 1 << 4,
        POL_ECNBIT_1 = 1 << 5,
    }                  po_lflags:8;
    unsigned char     *po_data;

    /* A lot of packets contain data belonging to only one stream.  Thus,
     * `one' is used first.  If this is not enough, any number of
     * stream_rec_arr structures can be allocated to handle more stream
     * records.
     */
    union {
        struct stream_rec               one;
        struct stream_rec_arr_tailq     arr;
    }                  po_srecs;

    /* If PO_ENCRYPTED is set, this points to the buffer that holds encrypted
     * data.
     */
    unsigned char     *po_enc_data;

    lsquic_ver_tag_t   po_ver_tag;      /* Set if PO_VERSION is set */
    unsigned char     *po_nonce;        /* Use to generate header if PO_NONCE is set */
    const struct network_path
                      *po_path;
#define po_token po_nonce
    struct bwp_state  *po_bwp_state;
} lsquic_packet_out_t;

/* This is to make sure these bit names are not used, they are only for
 * convenience in gdb output.
 */
#define PO_PNS_HSK
#define PO_PNS_APP

/* The size of lsquic_packet_out_t could be further reduced:
 *
 * po_ver_tag could be encoded as a few bits representing enum lsquic_version
 * in po_flags.  The cost is a bit of complexity.  This will save us four bytes.
 */

#define lsquic_packet_out_avail(p) ((unsigned short) \
                                        ((p)->po_n_alloc - (p)->po_data_sz))

#define lsquic_packet_out_packno_bits(p) (((p)->po_flags >> POBIT_SHIFT) & 0x3)

#define lsquic_packet_out_set_packno_bits(p, b) do {                    \
    (p)->po_flags &= ~(0x3 << POBIT_SHIFT);                             \
    (p)->po_flags |= ((b) & 0x3) << POBIT_SHIFT;                        \
} while (0)

#define lsquic_packet_out_ipv6(p) ((int)(((p)->po_flags >> POIPv6_SHIFT) & 1))

#define lsquic_packet_out_set_ipv6(p, b) do {                           \
    (p)->po_flags &= ~(1 << POIPv6_SHIFT);                              \
    (p)->po_flags |= ((b) & 1) << POIPv6_SHIFT;                         \
} while (0)

#define lsquic_packet_out_spin_bit(p) (((p)->po_flags & PO_SPIN_BIT) > 0)

#define lsquic_packet_out_set_spin_bit(p, b) do {                       \
    (p)->po_flags &= ~PO_SPIN_BIT;                                      \
    (p)->po_flags |= ((b) & 1) << POSPIN_SHIFT;                         \
} while (0)

#define lsquic_packet_out_key_phase(p) 0    /* TODO */

#define lsquic_po_header_length(lconn, po_flags, dcid_len) ( \
    lconn->cn_pf->pf_packout_max_header_size(lconn, po_flags, dcid_len))

#define lsquic_packet_out_total_sz(lconn, p) (\
    lconn->cn_pf->pf_packout_size(lconn, p))

#if __GNUC__
#if LSQUIC_EXTRA_CHECKS
#define lsquic_packet_out_sent_sz(lconn, p) (                               \
        __builtin_expect(((p)->po_flags & PO_SENT_SZ), 1) ?                 \
        (assert((p)->po_sent_sz == lsquic_packet_out_total_sz(lconn, p)),   \
            (p)->po_sent_sz) : lsquic_packet_out_total_sz(lconn, p))
#   else
#define lsquic_packet_out_sent_sz(lconn, p) (                               \
        __builtin_expect(((p)->po_flags & PO_SENT_SZ), 1) ?                 \
        (p)->po_sent_sz : lsquic_packet_out_total_sz(lconn, p))
#endif
#else
#   define lsquic_packet_out_sent_sz(lconn, p) (                            \
        (p)->po_flags & PO_SENT_SZ ?                                        \
        (p)->po_sent_sz : lsquic_packet_out_total_sz(lconn, p))
#endif

#define lsquic_packet_out_verneg(p) \
    (((p)->po_flags & (PO_NOENCRYPT|PO_VERNEG|PO_RETRY)) == (PO_NOENCRYPT|PO_VERNEG))

#define lsquic_packet_out_pubres(p) \
    (((p)->po_flags & (PO_NOENCRYPT|PO_VERNEG|PO_RETRY)) ==  PO_NOENCRYPT           )

#define lsquic_packet_out_retry(p) \
    (((p)->po_flags & (PO_NOENCRYPT|PO_VERNEG|PO_RETRY)) == (PO_NOENCRYPT|PO_RETRY) )

#define lsquic_packet_out_set_enc_level(p, level) do {                      \
    (p)->po_lflags &= ~(3 << POLEV_SHIFT);                                  \
    (p)->po_lflags |= level << POLEV_SHIFT;                                 \
} while (0)

#define lsquic_packet_out_enc_level(p)  (((p)->po_lflags >> POLEV_SHIFT) & 3)

#define lsquic_packet_out_set_kp(p, kp) do {                                \
    (p)->po_lflags &= ~(1 << POKP_SHIFT);                                   \
    (p)->po_lflags |= kp << POKP_SHIFT;                                     \
} while (0)

#define lsquic_packet_out_kp(p)  (((p)->po_lflags >> POKP_SHIFT) & 1)

#define lsquic_packet_out_set_pns(p, pns) do {                              \
    (p)->po_flags &= ~(3 << POPNS_SHIFT);                                   \
    (p)->po_flags |= pns << POPNS_SHIFT;                                    \
} while (0)

#define lsquic_packet_out_pns(p)  (((p)->po_flags >> POPNS_SHIFT) & 3)

#define lsquic_packet_out_set_ecn(p, ecn) do {                              \
    (p)->po_lflags &= ~(3 << POECN_SHIFT);                                  \
    (p)->po_lflags |= ecn << POECN_SHIFT;                                   \
} while (0)

#define lsquic_packet_out_ecn(p)  (((p)->po_lflags >> POECN_SHIFT) & 3)

struct packet_out_srec_iter {
    lsquic_packet_out_t         *packet_out;
    struct stream_rec_arr       *cur_srec_arr;
    unsigned                     srec_idx;
    int                          impl_idx;
};


struct stream_rec *
posi_first (struct packet_out_srec_iter *posi, lsquic_packet_out_t *);

struct stream_rec *
posi_next (struct packet_out_srec_iter *posi);

lsquic_packet_out_t *
lsquic_packet_out_new (struct lsquic_mm *, struct malo *, int use_cid,
                       const struct lsquic_conn *, enum packno_bits,
                       const lsquic_ver_tag_t *, const unsigned char *nonce,
                       const struct network_path *);

void
lsquic_packet_out_destroy (lsquic_packet_out_t *,
                        struct lsquic_engine_public *, void *peer_ctx);

int
lsquic_packet_out_add_stream (lsquic_packet_out_t *packet_out,
                              struct lsquic_mm *mm,
                              struct lsquic_stream *new_stream,
                              enum quic_frame_type,
                              unsigned short off, unsigned short len);

unsigned
lsquic_packet_out_elide_reset_stream_frames (lsquic_packet_out_t *,
                                                    lsquic_stream_id_t);

int
lsquic_packet_out_split_in_two (struct lsquic_mm *, lsquic_packet_out_t *,
    lsquic_packet_out_t *, const struct parse_funcs *, unsigned excess_bytes);

void
lsquic_packet_out_chop_regen (lsquic_packet_out_t *);

void
lsquic_packet_out_ack_streams (struct lsquic_packet_out *);

void
lsquic_packet_out_zero_pad (struct lsquic_packet_out *);

size_t
lsquic_packet_out_mem_used (const struct lsquic_packet_out *);

int
lsquic_packet_out_turn_on_fin (struct lsquic_packet_out *,
                   const struct parse_funcs *, const struct lsquic_stream *);

#endif
