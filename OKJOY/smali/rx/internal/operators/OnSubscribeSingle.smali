.class public Lrx/internal/operators/OnSubscribeSingle;
.super Ljava/lang/Object;
.source "OnSubscribeSingle.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final observable:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OnSubscribeSingle;, "Lrx/internal/operators/OnSubscribeSingle<TT;>;"
    .local p1, "observable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeSingle;->observable:Lrx/Observable;

    .line 33
    return-void
.end method

.method public static create(Lrx/Observable;)Lrx/internal/operators/OnSubscribeSingle;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/internal/operators/OnSubscribeSingle",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "observable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeSingle;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeSingle;-><init>(Lrx/Observable;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OnSubscribeSingle;, "Lrx/internal/operators/OnSubscribeSingle<TT;>;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeSingle;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OnSubscribeSingle;, "Lrx/internal/operators/OnSubscribeSingle<TT;>;"
    .local p1, "child":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeSingle$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OnSubscribeSingle$1;-><init>(Lrx/internal/operators/OnSubscribeSingle;Lrx/SingleSubscriber;)V

    .line 80
    .local v0, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 81
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeSingle;->observable:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 82
    return-void
.end method
