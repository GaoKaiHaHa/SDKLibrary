.class Lcom/kwad/sdk/core/diskcache/a/a$a$a;
.super Ljava/io/FilterOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/diskcache/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/diskcache/a/a$a;


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/core/diskcache/a/a$a;Ljava/io/OutputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$a$a;->a:Lcom/kwad/sdk/core/diskcache/a/a$a;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/diskcache/a/a$a;Ljava/io/OutputStream;Lcom/kwad/sdk/core/diskcache/a/a$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/diskcache/a/a$a$a;-><init>(Lcom/kwad/sdk/core/diskcache/a/a$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$a$a;->a:Lcom/kwad/sdk/core/diskcache/a/a$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/diskcache/a/a$a;->a(Lcom/kwad/sdk/core/diskcache/a/a$a;Z)Z

    :goto_d
    return-void
.end method

.method public flush()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$a$a;->a:Lcom/kwad/sdk/core/diskcache/a/a$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/diskcache/a/a$a;->a(Lcom/kwad/sdk/core/diskcache/a/a$a;Z)Z

    :goto_d
    return-void
.end method

.method public write(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    move-exception p1

    iget-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$a$a;->a:Lcom/kwad/sdk/core/diskcache/a/a$a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/diskcache/a/a$a;->a(Lcom/kwad/sdk/core/diskcache/a/a$a;Z)Z

    :goto_d
    return-void
.end method

.method public write([BII)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    move-exception p1

    iget-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$a$a;->a:Lcom/kwad/sdk/core/diskcache/a/a$a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/diskcache/a/a$a;->a(Lcom/kwad/sdk/core/diskcache/a/a$a;Z)Z

    :goto_d
    return-void
.end method