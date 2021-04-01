.class public final Lrx/internal/operators/OnSubscribeFromIterable;
.super Ljava/lang/Object;
.source "OnSubscribeFromIterable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final is:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable;, "Lrx/internal/operators/OnSubscribeFromIterable<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_d

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "iterable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_d
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromIterable;->is:Ljava/lang/Iterable;

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable;, "Lrx/internal/operators/OnSubscribeFromIterable<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeFromIterable;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable;, "Lrx/internal/operators/OnSubscribeFromIterable<TT;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeFromIterable;->is:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 53
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_16

    move-result v0

    .line 59
    .local v0, "b":Z
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_15

    .line 60
    if-nez v0, :cond_1b

    .line 61
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 66
    .end local v0    # "b":Z
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :cond_15
    :goto_15
    return-void

    .line 54
    :catch_16
    move-exception v1

    .line 55
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_15

    .line 63
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "b":Z
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :cond_1b
    new-instance v3, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;

    invoke-direct {v3, p1, v2}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;-><init>(Lrx/Subscriber;Ljava/util/Iterator;)V

    invoke-virtual {p1, v3}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    goto :goto_15
.end method
