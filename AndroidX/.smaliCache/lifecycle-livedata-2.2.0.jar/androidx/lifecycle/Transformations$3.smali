.class final Landroidx/lifecycle/Transformations$3;
.super Ljava/lang/Object;
.source "Transformations.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "TX;>;"
    }
.end annotation


# instance fields
.field mFirstTime:Z

.field final synthetic val$outputLiveData:Landroidx/lifecycle/MediatorLiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/MediatorLiveData;)V
    .registers 2

    .line 177
    iput-object p1, p0, Landroidx/lifecycle/Transformations$3;->val$outputLiveData:Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/lifecycle/Transformations$3;->mFirstTime:Z

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .line 183
    .local p1, "currentValue":Ljava/lang/Object;, "TX;"
    iget-object v0, p0, Landroidx/lifecycle/Transformations$3;->val$outputLiveData:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 184
    .local v0, "previousValue":Ljava/lang/Object;, "TX;"
    iget-boolean v1, p0, Landroidx/lifecycle/Transformations$3;->mFirstTime:Z

    if-nez v1, :cond_16

    if-nez v0, :cond_e

    if-nez p1, :cond_16

    :cond_e
    if-eqz v0, :cond_1e

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 187
    :cond_16
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/lifecycle/Transformations$3;->mFirstTime:Z

    .line 188
    iget-object v1, p0, Landroidx/lifecycle/Transformations$3;->val$outputLiveData:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 190
    :cond_1e
    return-void
.end method
