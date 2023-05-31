.class public abstract Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;
.super Lrx/internal/util/unsafe/ConcurrentCircularArrayQueueL0Pad;
.source "ConcurrentCircularArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueueL0Pad",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/SuppressAnimalSniffer;
.end annotation


# static fields
.field protected static final BUFFER_PAD:I = 0x20

.field private static final REF_ARRAY_BASE:J

.field private static final REF_ELEMENT_SHIFT:I

.field protected static final SPARSE_SHIFT:I


# instance fields
.field protected final buffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected final mask:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 48
    const-string v1, "sparse.shift"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->SPARSE_SHIFT:I

    .line 53
    sget-object v1, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 54
    .local v0, "scale":I
    const/4 v1, 0x4

    if-ne v1, v0, :cond_33

    .line 55
    sget v1, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->SPARSE_SHIFT:I

    add-int/lit8 v1, v1, 0x2

    sput v1, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->REF_ELEMENT_SHIFT:I

    .line 62
    :goto_1e
    sget-object v1, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    const/16 v2, 0x20

    sget v3, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->REF_ELEMENT_SHIFT:I

    sget v4, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->SPARSE_SHIFT:I

    sub-int/2addr v3, v4

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-long v2, v1

    sput-wide v2, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->REF_ARRAY_BASE:J

    .line 64
    return-void

    .line 56
    :cond_33
    const/16 v1, 0x8

    if-ne v1, v0, :cond_3e

    .line 57
    sget v1, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->SPARSE_SHIFT:I

    add-int/lit8 v1, v1, 0x3

    sput v1, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->REF_ELEMENT_SHIFT:I

    goto :goto_1e

    .line 59
    :cond_3e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown pointer size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(I)V
    .registers 6
    .param p1, "capacity"    # I

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;, "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueueL0Pad;-><init>()V

    .line 71
    invoke-static {p1}, Lrx/internal/util/unsafe/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    .line 72
    .local v0, "actualCapacity":I
    add-int/lit8 v1, v0, -0x1

    int-to-long v2, v1

    iput-wide v2, p0, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->mask:J

    .line 74
    sget v1, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->SPARSE_SHIFT:I

    shl-int v1, v0, v1

    add-int/lit8 v1, v1, 0x40

    new-array v1, v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    .line 75
    return-void
.end method


# virtual methods
.method protected final calcElementOffset(J)J
    .registers 6
    .param p1, "index"    # J

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;, "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue<TE;>;"
    iget-wide v0, p0, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->mask:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final calcElementOffset(JJ)J
    .registers 10
    .param p1, "index"    # J
    .param p3, "mask"    # J

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;, "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue<TE;>;"
    sget-wide v0, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->REF_ARRAY_BASE:J

    and-long v2, p1, p3

    sget v4, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->REF_ELEMENT_SHIFT:I

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 185
    .local p0, "this":Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;, "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue<TE;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;, "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final lpElement(J)Ljava/lang/Object;
    .registers 4
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;, "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->lpElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final lpElement([Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 6
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;, "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final lvElement(J)Ljava/lang/Object;
    .registers 4
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;, "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final lvElement([Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 6
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;, "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final soElement(JLjava/lang/Object;)V
    .registers 5
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;, "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue<TE;>;"
    .local p3, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2, p3}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 121
    return-void
.end method

.method protected final soElement([Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 7
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JTE;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;, "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    .local p4, "e":Ljava/lang/Object;, "TE;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 132
    return-void
.end method

.method protected final spElement(JLjava/lang/Object;)V
    .registers 5
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;, "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue<TE;>;"
    .local p3, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2, p3}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 100
    return-void
.end method

.method protected final spElement([Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 7
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JTE;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;, "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    .local p4, "e":Ljava/lang/Object;, "TE;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 111
    return-void
.end method