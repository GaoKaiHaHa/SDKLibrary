.class public abstract Lcom/sigmob/wire/okio/ForwardingSink;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/wire/okio/Sink;


# instance fields
.field private final delegate:Lcom/sigmob/wire/okio/Sink;


# direct methods
.method public constructor <init>(Lcom/sigmob/wire/okio/Sink;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/sigmob/wire/okio/ForwardingSink;->delegate:Lcom/sigmob/wire/okio/Sink;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/ForwardingSink;->delegate:Lcom/sigmob/wire/okio/Sink;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/Sink;->close()V

    return-void
.end method

.method public final delegate()Lcom/sigmob/wire/okio/Sink;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/ForwardingSink;->delegate:Lcom/sigmob/wire/okio/Sink;

    return-object v0
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/ForwardingSink;->delegate:Lcom/sigmob/wire/okio/Sink;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/Sink;->flush()V

    return-void
.end method

.method public timeout()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/ForwardingSink;->delegate:Lcom/sigmob/wire/okio/Sink;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/Sink;->timeout()Lcom/sigmob/wire/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/ForwardingSink;->delegate:Lcom/sigmob/wire/okio/Sink;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/sigmob/wire/okio/Buffer;J)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/wire/okio/ForwardingSink;->delegate:Lcom/sigmob/wire/okio/Sink;

    invoke-interface {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Sink;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    return-void
.end method
