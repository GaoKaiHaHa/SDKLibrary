.class Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;
.super Lrx/Subscriber;
.source "OperatorOnErrorResumeNextViaFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private done:Z

.field produced:J

.field final synthetic this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$pa:Lrx/internal/producers/ProducerArbiter;

.field final synthetic val$ssub:Lrx/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;Lrx/subscriptions/SerialSubscription;)V
    .registers 5

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    iput-object p3, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$pa:Lrx/internal/producers/ProducerArbiter;

    iput-object p4, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$ssub:Lrx/subscriptions/SerialSubscription;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    if-eqz v0, :cond_5

    .line 102
    :goto_4
    return-void

    .line 100
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    .line 101
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 10
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    iget-boolean v5, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    if-eqz v5, :cond_b

    .line 107
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 108
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 146
    :goto_a
    return-void

    .line 111
    :cond_b
    const/4 v5, 0x1

    iput-boolean v5, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    .line 113
    :try_start_e
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->unsubscribe()V

    .line 115
    new-instance v1, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;-><init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;)V

    .line 133
    .local v1, "next":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v5, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 135
    iget-wide v2, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->produced:J

    .line 136
    .local v2, "p":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_28

    .line 137
    iget-object v5, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$pa:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v5, v2, v3}, Lrx/internal/producers/ProducerArbiter;->produced(J)V

    .line 140
    :cond_28
    iget-object v5, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    iget-object v5, v5, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->resumeFunction:Lrx/functions/Func1;

    invoke-interface {v5, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/Observable;

    .line 142
    .local v4, "resume":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-virtual {v4, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_35} :catch_36

    goto :goto_a

    .line 143
    .end local v1    # "next":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .end local v2    # "p":J
    .end local v4    # "resume":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :catch_36
    move-exception v0

    .line 144
    .local v0, "e2":Ljava/lang/Throwable;
    iget-object v5, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    invoke-static {v0, v5}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_a
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    if-eqz v0, :cond_5

    .line 155
    :goto_4
    return-void

    .line 153
    :cond_5
    iget-wide v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->produced:J

    .line 154
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 159
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$pa:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 160
    return-void
.end method
