.class Landroidx/lifecycle/ComputableLiveData$2;
.super Ljava/lang/Object;
.source "ComputableLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ComputableLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/ComputableLiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/ComputableLiveData;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/lifecycle/ComputableLiveData;

    .line 87
    .local p0, "this":Landroidx/lifecycle/ComputableLiveData$2;, "Landroidx/lifecycle/ComputableLiveData$2;"
    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 93
    .local p0, "this":Landroidx/lifecycle/ComputableLiveData$2;, "Landroidx/lifecycle/ComputableLiveData$2;"
    :cond_0
    const/4 v0, 0x0

    .line 95
    .local v0, "computed":Z
    iget-object v1, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v1, v1, Landroidx/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "value":Ljava/lang/Object;, "TT;"
    :goto_e
    :try_start_e
    iget-object v4, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v4, v4, Landroidx/lifecycle/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 100
    const/4 v0, 0x1

    .line 101
    iget-object v4, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/ComputableLiveData;->compute()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    goto :goto_e

    .line 103
    :cond_21
    if-eqz v0, :cond_2a

    .line 104
    iget-object v3, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v3, v3, Landroidx/lifecycle/ComputableLiveData;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v3, v1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_32

    .line 108
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_2a
    iget-object v1, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v1, v1, Landroidx/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    goto :goto_3b

    .line 108
    :catchall_32
    move-exception v1

    iget-object v3, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v3, v3, Landroidx/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    throw v1

    .line 118
    :cond_3b
    :goto_3b
    if-eqz v0, :cond_47

    iget-object v1, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v1, v1, Landroidx/lifecycle/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    :cond_47
    return-void
.end method