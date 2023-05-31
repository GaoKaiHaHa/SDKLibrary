.class public Ltds/androidx/recyclerview/widget/AsyncListDiffer;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener;,
        Ltds/androidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;
    }
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
.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field final mConfig:Ltds/androidx/recyclerview/widget/AsyncDifferConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field mMainThreadExecutor:Ljava/util/concurrent/Executor;

.field mMaxScheduledGeneration:I

.field private mReadOnlyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mUpdateCallback:Ltds/androidx/recyclerview/widget/ListUpdateCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 131
    new-instance v0, Ltds/androidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;-><init>()V

    sput-object v0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ltds/androidx/recyclerview/widget/ListUpdateCallback;Ltds/androidx/recyclerview/widget/AsyncDifferConfig;)V
    .registers 4
    .param p1, "listUpdateCallback"    # Ltds/androidx/recyclerview/widget/ListUpdateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/ListUpdateCallback;",
            "Ltds/androidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 178
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListDiffer;, "Ltds/androidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    .local p2, "config":Ltds/androidx/recyclerview/widget/AsyncDifferConfig;, "Ltds/androidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mListeners:Ljava/util/List;

    .line 196
    nop

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 179
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Ltds/androidx/recyclerview/widget/ListUpdateCallback;

    .line 180
    iput-object p2, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mConfig:Ltds/androidx/recyclerview/widget/AsyncDifferConfig;

    .line 181
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/AsyncDifferConfig;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 182
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/AsyncDifferConfig;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    goto :goto_26

    .line 184
    :cond_22
    sget-object v0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 186
    :goto_26
    return-void
.end method

.method public constructor <init>(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .registers 5
    .param p1, "adapter"    # Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;",
            "Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListDiffer;, "Ltds/androidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    .local p2, "diffCallback":Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback;, "Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback<TT;>;"
    new-instance v0, Ltds/androidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Ltds/androidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;

    invoke-direct {v1, p2}, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 163
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Ltds/androidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object v1

    .line 162
    invoke-direct {p0, v0, v1}, Ltds/androidx/recyclerview/widget/AsyncListDiffer;-><init>(Ltds/androidx/recyclerview/widget/ListUpdateCallback;Ltds/androidx/recyclerview/widget/AsyncDifferConfig;)V

    .line 164
    return-void
.end method

.method private onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 6
    .param p2, "commitCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 375
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListDiffer;, "Ltds/androidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    .local p1, "previousList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener;

    .line 376
    .local v1, "listener":Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener;, "Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener<TT;>;"
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {v1, p1, v2}, Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener;->onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V

    .line 377
    .end local v1    # "listener":Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener;, "Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener<TT;>;"
    goto :goto_6

    .line 378
    :cond_18
    if-eqz p2, :cond_1d

    .line 379
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 381
    :cond_1d
    return-void
.end method


# virtual methods
.method public addListListener(Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 392
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListDiffer;, "Ltds/androidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    .local p1, "listener":Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener;, "Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener<TT;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    return-void
.end method

.method public getCurrentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 216
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListDiffer;, "Ltds/androidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    return-object v0
.end method

.method latchList(Ljava/util/List;Ltds/androidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/Runnable;)V
    .registers 6
    .param p2, "diffResult"    # Ltds/androidx/recyclerview/widget/DiffUtil$DiffResult;
    .param p3, "commitCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ltds/androidx/recyclerview/widget/DiffUtil$DiffResult;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 364
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListDiffer;, "Ltds/androidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 365
    .local v0, "previousList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    .line 367
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 368
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Ltds/androidx/recyclerview/widget/ListUpdateCallback;

    invoke-virtual {p2, v1}, Ltds/androidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Ltds/androidx/recyclerview/widget/ListUpdateCallback;)V

    .line 369
    invoke-direct {p0, v0, p3}, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method

.method public removeListListener(Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 403
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListDiffer;, "Ltds/androidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    .local p1, "listener":Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener;, "Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener<TT;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 404
    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 231
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListDiffer;, "Ltds/androidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method public submitList(Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 13
    .param p2, "commitCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 254
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListDiffer;, "Ltds/androidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget v0, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mMaxScheduledGeneration:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mMaxScheduledGeneration:I

    .line 256
    .local v5, "runGeneration":I
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    if-ne p1, v0, :cond_10

    .line 258
    if-eqz p2, :cond_f

    .line 259
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 261
    :cond_f
    return-void

    .line 264
    :cond_10
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 267
    .local v7, "previousList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    if-nez p1, :cond_2b

    .line 269
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 270
    .local v0, "countRemoved":I
    const/4 v2, 0x0

    iput-object v2, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    .line 271
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 273
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Ltds/androidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {v2, v1, v0}, Ltds/androidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 274
    invoke-direct {p0, v7, p2}, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 275
    return-void

    .line 279
    .end local v0    # "countRemoved":I
    :cond_2b
    if-nez v0, :cond_42

    .line 280
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    .line 281
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 283
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Ltds/androidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ltds/androidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 284
    invoke-direct {p0, v7, p2}, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 285
    return-void

    .line 288
    :cond_42
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    .line 289
    .local v0, "oldList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->mConfig:Ltds/androidx/recyclerview/widget/AsyncDifferConfig;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/AsyncDifferConfig;->getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    new-instance v9, Ltds/androidx/recyclerview/widget/AsyncListDiffer$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Ltds/androidx/recyclerview/widget/AsyncListDiffer$1;-><init>(Ltds/androidx/recyclerview/widget/AsyncListDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 357
    return-void
.end method
