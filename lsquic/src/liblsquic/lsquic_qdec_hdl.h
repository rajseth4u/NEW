/* Copyright (c) 2017 - 2019 LiteSpeed Technologies Inc.  See LICENSE. */
/*
 * lsquic_qdec_hdl.h -- QPACK decoder streams handler
 *
 * The handler owns two unidirectional streams: a) peer-initiated QPACK
 * encoder stream, from which it reads; and b) locally-initiated QPACK
 * decoder stream, to which it writes.
 */

#ifndef LSQUIC_QDEC_HDL_H
#define LSQUIC_QDEC_HDL_H 1

struct lsquic_conn;
struct lsquic_stream;
struct lsquic_stream_if;
struct lsquic_engine_public;


struct qpack_dec_hdl
{
    struct lsquic_conn      *qdh_conn;
    enum {
        QDH_INITIALIZED     = 1 << 0,
    }                        qdh_flags;
    struct lsqpack_dec       qdh_decoder;
    struct lsquic_stream    *qdh_enc_sm_in;
    struct frab_list         qdh_fral;
    struct lsquic_stream    *qdh_dec_sm_out;
    const struct lsquic_engine_public
                            *qdh_enpub;
    struct http1x_ctor_ctx   qdh_h1x_ctor_ctx;
    void                    *qdh_hsi_ctx;
};

int
lsquic_qdh_init (struct qpack_dec_hdl *, struct lsquic_conn *,
                    int is_server, const struct lsquic_engine_public *,
                    unsigned dyn_table_size, unsigned max_risked_streams);

void
lsquic_qdh_cleanup (struct qpack_dec_hdl *);

#define lsquic_qdh_has_enc_stream(qdh) ((qdh)->qdh_enc_sm_in != NULL)

enum header_in_status
{
    HIS_DONE,
    HIS_NEED,
    HIS_BLOCKED,
    HIS_ERROR,
};


enum lsqpack_read_header_status
lsquic_qdh_header_in_begin (struct qpack_dec_hdl *, struct lsquic_stream *,
                            uint64_t size, const unsigned char **, size_t);

enum lsqpack_read_header_status
lsquic_qdh_header_in_continue (struct qpack_dec_hdl *, struct lsquic_stream *,
                                const unsigned char **, size_t);

void
lsquic_qdh_unref_stream (struct qpack_dec_hdl *, struct lsquic_stream *);

void
lsquic_qdh_cancel_stream (struct qpack_dec_hdl *,
                                                struct lsquic_stream *);

extern const struct lsquic_stream_if *const lsquic_qdh_enc_sm_in_if;
extern const struct lsquic_stream_if *const lsquic_qdh_dec_sm_out_if;

#endif
