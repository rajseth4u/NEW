/* Copyright (c) 2017 - 2019 LiteSpeed Technologies Inc.  See LICENSE. */
/*
 * lsquic_min_heap.h -- Min-heap for connections
 */

#ifndef LSQUIC_MIN_HEAP_H
#define LSQUIC_MIN_HEAP_H 1

struct lsquic_conn;

struct min_heap_elem
{
    struct lsquic_conn  *mhe_conn;
    uint64_t             mhe_val;
};


struct min_heap
{
    struct min_heap_elem    *mh_elems;
    unsigned                 mh_nalloc,
                             mh_nelem;
};


void
lsquic_mh_insert (struct min_heap *, struct lsquic_conn *conn, uint64_t val);

struct lsquic_conn *
lsquic_mh_pop (struct min_heap *);

#define lsquic_mh_peek(heap) ((heap)->mh_elems[0].mhe_conn)

#define lsquic_mh_count(heap) (+(heap)->mh_nelem)

#define lsquic_mh_nalloc(heap) (+(heap)->mh_nalloc)

#endif
