.class Lrx/internal/operators/OnSubscribeRedo$3$1;
.super Lrx/Subscriber;
.source "OnSubscribeRedo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo$3;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Lrx/Notification",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OnSubscribeRedo$3;

.field final synthetic val$filteredTerminals:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo$3;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3$1;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$3;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->val$filteredTerminals:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 287
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3$1;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->val$filteredTerminals:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 288
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 292
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3$1;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->val$filteredTerminals:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 293
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3$1;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRedo$3$1;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3$1;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    .local p1, "t":Lrx/Notification;, "Lrx/Notification<*>;"
    invoke-virtual {p1}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$3;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$3;->this$0:Lrx/internal/operators/OnSubscribeRedo;

    iget-boolean v0, v0, Lrx/internal/operators/OnSubscribeRedo;->stopOnComplete:Z

    if-eqz v0, :cond_14

    .line 298
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->val$filteredTerminals:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 304
    :goto_13
    return-void

    .line 299
    :cond_14
    invoke-virtual {p1}, Lrx/Notification;->isOnError()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$3;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$3;->this$0:Lrx/internal/operators/OnSubscribeRedo;

    iget-boolean v0, v0, Lrx/internal/operators/OnSubscribeRedo;->stopOnError:Z

    if-eqz v0, :cond_2c

    .line 300
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->val$filteredTerminals:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_13

    .line 302
    :cond_2c
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->val$filteredTerminals:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_13
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 308
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3$1;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    .line 309
    return-void
.end method
