.class public final Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;
.super Ljava/lang/Object;
.source "AsyncDifferConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/AsyncDifferConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sDiffExecutor:Ljava/util/concurrent/Executor;

.field private static final sExecutorLock:Ljava/lang/Object;


# instance fields
.field private mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

.field private final mDiffCallback:Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMainThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;->sExecutorLock:Ljava/lang/Object;

    .line 145
    const/4 v0, 0x0

    sput-object v0, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;, "Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder<TT;>;"
    .local p1, "diffCallback":Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback;, "Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;->mDiffCallback:Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 86
    return-void
.end method


# virtual methods
.method public build()Ltds/androidx/recyclerview/widget/AsyncDifferConfig;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltds/androidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation

    .line 129
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;, "Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder<TT;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1b

    .line 130
    sget-object v0, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;->sExecutorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_7
    sget-object v1, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_12

    .line 132
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    .line 134
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_18

    .line 135
    sget-object v0, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    goto :goto_1b

    .line 134
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1

    .line 137
    :cond_1b
    :goto_1b
    new-instance v0, Ltds/androidx/recyclerview/widget/AsyncDifferConfig;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;->mDiffCallback:Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {v0, v1, v2, v3}, Ltds/androidx/recyclerview/widget/AsyncDifferConfig;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-object v0
.end method

.method public setBackgroundThreadExecutor(Ljava/util/concurrent/Executor;)Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 118
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;, "Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder<TT;>;"
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    .line 119
    return-object p0
.end method

.method public setMainThreadExecutor(Ljava/util/concurrent/Executor;)Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 102
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;, "Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder<TT;>;"
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 103
    return-object p0
.end method
