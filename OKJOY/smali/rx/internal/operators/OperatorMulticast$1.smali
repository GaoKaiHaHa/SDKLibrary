.class Lrx/internal/operators/OperatorMulticast$1;
.super Ljava/lang/Object;
.source "OperatorMulticast.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMulticast;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lrx/Observable;Lrx/functions/Func0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$guard:Ljava/lang/Object;

.field final synthetic val$waitingForConnect:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V
    .registers 4

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$1;, "Lrx/internal/operators/OperatorMulticast.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMulticast$1;->val$guard:Ljava/lang/Object;

    iput-object p2, p0, Lrx/internal/operators/OperatorMulticast$1;->val$connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/internal/operators/OperatorMulticast$1;->val$waitingForConnect:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$1;, "Lrx/internal/operators/OperatorMulticast.1;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMulticast$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$1;, "Lrx/internal/operators/OperatorMulticast.1;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$1;->val$guard:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_3
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast$1;->val$connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 60
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast$1;->val$waitingForConnect:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :goto_10
    monitor-exit v1

    .line 66
    return-void

    .line 63
    :cond_12
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast$1;->val$connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/Subject;

    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_10

    .line 65
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method