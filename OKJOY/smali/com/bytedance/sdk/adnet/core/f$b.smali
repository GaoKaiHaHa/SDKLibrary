.class Lcom/bytedance/sdk/adnet/core/f$b;
.super Ljava/io/FilterInputStream;
.source "DiskBasedCache.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private b:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .registers 4

    .prologue
    .line 571
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 572
    iput-wide p2, p0, Lcom/bytedance/sdk/adnet/core/f$b;->a:J

    .line 573
    return-void
.end method


# virtual methods
.method a()J
    .registers 5

    .prologue
    .line 599
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f$b;->a:J

    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f$b;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 578
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 579
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f$b;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f$b;->b:J

    .line 581
    :cond_e
    return v0
.end method

.method public read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 587
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 588
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f$b;->b:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f$b;->b:J

    .line 590
    :cond_d
    return v0
.end method
