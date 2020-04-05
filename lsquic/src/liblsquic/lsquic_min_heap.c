/* Copyright (c) 2017 - 2019 LiteSpeed Technologies Inc.  See LICENSE. */
/*
 * lsquic_min_heap.c
 */

#include <assert.h>
#include <stdint.h>

#include "lsquic_min_heap.h"
#define LSQUIC_LOGGER_MODULE LSQLM_MIN_HEAP
#include "lsquic_types.h"
#include "lsquic_logger.h"

#define MHE_PARENT(i) ((i - 1) / 2)
#define MHE_LCHILD(i) (2 * i + 1)
#define MHE_RCHILD(i) (2 * i + 2)


static void
heapify_min_heap (struct min_heap *heap, unsigned i)
{
    struct min_heap_elem el;
    unsigned smallest;

    assert(i < heap->mh_nelem);

    if (MHE_LCHILD(i) < heap->mh_nelem)
    {
        if (heap->mh_elems[ MHE_LCHILD(i) ].mhe_val <
                                    heap->mh_elems[ i ].mhe_val)
            smallest = MHE_LCHILD(i);
        else
            smallest = i;
        if (MHE_RCHILD(i) < heap->mh_nelem &&
            heap->mh_elems[ MHE_RCHILD(i) ].mhe_val <
                                    heap->mh_elems[ smallest ].mhe_val)
            smallest = MHE_RCHILD(i);
    }
    else
        smallest = i;

    if (smallest != i)
    {
        el = heap->mh_elems[ smallest ];
        heap->mh_elems[ smallest ] = heap->mh_elems[ i ];
        heap->mh_elems[ i ] = el;
        heapify_min_heap(heap, smallest);
    }
}


void
lsquic_mh_insert (struct min_heap *heap, struct lsquic_conn *conn, uint64_t val)
{
    struct min_heap_elem el;
    unsigned i;

    assert(heap->mh_nelem < heap->mh_nalloc);

    heap->mh_elems[ heap->mh_nelem ].mhe_conn = conn;
    heap->mh_elems[ heap->mh_nelem ].mhe_val  = val;
    ++heap->mh_nelem;

    i = heap->mh_nelem - 1;
    while (i > 0 && heap->mh_elems[ MHE_PARENT(i) ].mhe_val >
                                    heap->mh_elems[ i ].mhe_val)
    {
        el = heap->mh_elems[ MHE_PARENT(i) ];
        heap->mh_elems[ MHE_PARENT(i) ] = heap->mh_elems[ i ];
        heap->mh_elems[ i ] = el;
        i = MHE_PARENT(i);
    }
}


struct lsquic_conn *
lsquic_mh_pop (struct min_heap *heap)
{
    struct lsquic_conn *conn;

    if (heap->mh_nelem == 0)
        return NULL;

    conn = heap->mh_elems[0].mhe_conn;
    --heap->mh_nelem;
    if (heap->mh_nelem > 0)
    {
        heap->mh_elems[0] = heap->mh_elems[ heap->mh_nelem ];
        heapify_min_heap(heap, 0);
    }

    return conn;
}
