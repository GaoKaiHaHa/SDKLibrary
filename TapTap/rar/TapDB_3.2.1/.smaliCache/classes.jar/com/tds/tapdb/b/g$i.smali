.class Lcom/tds/tapdb/b/g$i;
.super Lcom/tds/tapdb/b/g$l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/b/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/tds/tapdb/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/tapdb/b/g$l<",
        "Lcom/tds/tapdb/b/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/io/InputStream;

.field final synthetic d:Ljava/io/OutputStream;

.field final synthetic e:Lcom/tds/tapdb/b/g;


# direct methods
.method constructor <init>(Lcom/tds/tapdb/b/g;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6

    iput-object p1, p0, Lcom/tds/tapdb/b/g$i;->e:Lcom/tds/tapdb/b/g;

    iput-object p4, p0, Lcom/tds/tapdb/b/g$i;->c:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/tds/tapdb/b/g$i;->d:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lcom/tds/tapdb/b/g$l;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g$i;->c()Lcom/tds/tapdb/b/g;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/tds/tapdb/b/g;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tds/tapdb/b/g$i;->e:Lcom/tds/tapdb/b/g;

    invoke-static {v0}, Lcom/tds/tapdb/b/g;->a(Lcom/tds/tapdb/b/g;)I

    move-result v0

    new-array v0, v0, [B

    :goto_8
    iget-object v1, p0, Lcom/tds/tapdb/b/g$i;->c:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_38

    iget-object v2, p0, Lcom/tds/tapdb/b/g$i;->d:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    iget-object v2, p0, Lcom/tds/tapdb/b/g$i;->e:Lcom/tds/tapdb/b/g;

    invoke-static {v2}, Lcom/tds/tapdb/b/g;->b(Lcom/tds/tapdb/b/g;)J

    move-result-wide v3

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/tds/tapdb/b/g;->a(Lcom/tds/tapdb/b/g;J)J

    iget-object v1, p0, Lcom/tds/tapdb/b/g$i;->e:Lcom/tds/tapdb/b/g;

    invoke-static {v1}, Lcom/tds/tapdb/b/g;->d(Lcom/tds/tapdb/b/g;)Lcom/tds/tapdb/b/g$r;

    move-result-object v1

    iget-object v2, p0, Lcom/tds/tapdb/b/g$i;->e:Lcom/tds/tapdb/b/g;

    invoke-static {v2}, Lcom/tds/tapdb/b/g;->b(Lcom/tds/tapdb/b/g;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/tds/tapdb/b/g$i;->e:Lcom/tds/tapdb/b/g;

    invoke-static {v4}, Lcom/tds/tapdb/b/g;->c(Lcom/tds/tapdb/b/g;)J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/tds/tapdb/b/g$r;->a(JJ)V

    goto :goto_8

    :cond_38
    iget-object v0, p0, Lcom/tds/tapdb/b/g$i;->e:Lcom/tds/tapdb/b/g;

    return-object v0
.end method