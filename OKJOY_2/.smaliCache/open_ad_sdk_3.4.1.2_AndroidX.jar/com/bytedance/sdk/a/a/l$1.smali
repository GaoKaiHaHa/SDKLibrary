.class final Lcom/bytedance/sdk/a/a/l$1;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/a/l;->a(Ljava/io/OutputStream;Lcom/bytedance/sdk/a/a/t;)Lcom/bytedance/sdk/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/a/t;

.field final synthetic b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/a/t;Ljava/io/OutputStream;)V
    .registers 3

    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/l$1;->a:Lcom/bytedance/sdk/a/a/t;

    iput-object p2, p0, Lcom/bytedance/sdk/a/a/l$1;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/l$1;->a:Lcom/bytedance/sdk/a/a/t;

    return-object v0
.end method

.method public a_(Lcom/bytedance/sdk/a/a/c;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 74
    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_45

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/l$1;->a:Lcom/bytedance/sdk/a/a/t;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/t;->g()V

    .line 76
    iget-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 77
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 78
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/l$1;->b:Ljava/io/OutputStream;

    iget-object v3, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v4, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 80
    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 81
    int-to-long v1, v1

    sub-long/2addr p2, v1

    .line 82
    iget-wide v3, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 84
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    if-ne v1, v2, :cond_44

    .line 85
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v1

    iput-object v1, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 86
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    .line 88
    :cond_44
    goto :goto_8

    .line 89
    :cond_45
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/l$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 99
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/l$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/l$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
