.class final Ltds/androidx/recyclerview/widget/GapWorker;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;,
        Ltds/androidx/recyclerview/widget/GapWorker$Task;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ltds/androidx/recyclerview/widget/GapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ltds/androidx/recyclerview/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFrameIntervalNs:J

.field mPostTimeNs:J

.field mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltds/androidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltds/androidx/recyclerview/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ltds/androidx/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    .line 190
    new-instance v0, Ltds/androidx/recyclerview/widget/GapWorker$1;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/GapWorker$1;-><init>()V

    sput-object v0, Ltds/androidx/recyclerview/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private buildTaskList()V
    .registers 13

    .line 217
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 218
    .local v0, "viewCount":I
    const/4 v1, 0x0

    .line 219
    .local v1, "totalTaskCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    const/4 v3, 0x0

    if-ge v2, v0, :cond_26

    .line 220
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 221
    .local v4, "view":Ltds/androidx/recyclerview/widget/RecyclerView;
    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_23

    .line 222
    iget-object v5, v4, Ltds/androidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v5, v4, v3}, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Ltds/androidx/recyclerview/widget/RecyclerView;Z)V

    .line 223
    iget-object v3, v4, Ltds/androidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v3, v3, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v1, v3

    .line 219
    .end local v4    # "view":Ltds/androidx/recyclerview/widget/RecyclerView;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 228
    .end local v2    # "i":I
    :cond_26
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 229
    const/4 v2, 0x0

    .line 230
    .local v2, "totalTaskIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2d
    if-ge v4, v0, :cond_91

    .line 231
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 232
    .local v5, "view":Ltds/androidx/recyclerview/widget/RecyclerView;
    invoke-virtual {v5}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v6

    if-eqz v6, :cond_3e

    .line 234
    goto :goto_8e

    .line 237
    :cond_3e
    iget-object v6, v5, Ltds/androidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 238
    .local v6, "prefetchRegistry":Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
    iget v7, v6, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v6, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    .line 239
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 240
    .local v7, "viewVelocity":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4e
    iget v9, v6, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_8e

    .line 242
    iget-object v9, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v2, v9, :cond_67

    .line 243
    new-instance v9, Ltds/androidx/recyclerview/widget/GapWorker$Task;

    invoke-direct {v9}, Ltds/androidx/recyclerview/widget/GapWorker$Task;-><init>()V

    .line 244
    .local v9, "task":Ltds/androidx/recyclerview/widget/GapWorker$Task;
    iget-object v10, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 246
    .end local v9    # "task":Ltds/androidx/recyclerview/widget/GapWorker$Task;
    :cond_67
    iget-object v9, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltds/androidx/recyclerview/widget/GapWorker$Task;

    .line 248
    .restart local v9    # "task":Ltds/androidx/recyclerview/widget/GapWorker$Task;
    :goto_6f
    iget-object v10, v6, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v11, v8, 0x1

    aget v10, v10, v11

    .line 250
    .local v10, "distanceToItem":I
    if-gt v10, v7, :cond_79

    const/4 v11, 0x1

    goto :goto_7a

    :cond_79
    move v11, v3

    :goto_7a
    iput-boolean v11, v9, Ltds/androidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    .line 251
    iput v7, v9, Ltds/androidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 252
    iput v10, v9, Ltds/androidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    .line 253
    iput-object v5, v9, Ltds/androidx/recyclerview/widget/GapWorker$Task;->view:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 254
    iget-object v11, v6, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v11, v11, v8

    iput v11, v9, Ltds/androidx/recyclerview/widget/GapWorker$Task;->position:I

    .line 256
    nop

    .end local v9    # "task":Ltds/androidx/recyclerview/widget/GapWorker$Task;
    .end local v10    # "distanceToItem":I
    add-int/lit8 v2, v2, 0x1

    .line 240
    add-int/lit8 v8, v8, 0x2

    goto :goto_4e

    .line 230
    .end local v5    # "view":Ltds/androidx/recyclerview/widget/RecyclerView;
    .end local v6    # "prefetchRegistry":Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
    .end local v7    # "viewVelocity":I
    .end local v8    # "j":I
    :cond_8e
    :goto_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 261
    .end local v4    # "i":I
    :cond_91
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v4, Ltds/androidx/recyclerview/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 262
    return-void
.end method

.method private flushTaskWithDeadline(Ltds/androidx/recyclerview/widget/GapWorker$Task;J)V
    .registers 8
    .param p1, "task"    # Ltds/androidx/recyclerview/widget/GapWorker$Task;
    .param p2, "deadlineNs"    # J

    .line 344
    iget-boolean v0, p1, Ltds/androidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    if-eqz v0, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_b

    :cond_a
    move-wide v0, p2

    .line 345
    .local v0, "taskDeadlineNs":J
    :goto_b
    iget-object v2, p1, Ltds/androidx/recyclerview/widget/GapWorker$Task;->view:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget v3, p1, Ltds/androidx/recyclerview/widget/GapWorker$Task;->position:I

    invoke-direct {p0, v2, v3, v0, v1}, Ltds/androidx/recyclerview/widget/GapWorker;->prefetchPositionWithDeadline(Ltds/androidx/recyclerview/widget/RecyclerView;IJ)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 347
    .local v2, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_30

    iget-object v3, v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_30

    .line 349
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 350
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_30

    .line 351
    iget-object v3, v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v3, p2, p3}, Ltds/androidx/recyclerview/widget/GapWorker;->prefetchInnerRecyclerViewWithDeadline(Ltds/androidx/recyclerview/widget/RecyclerView;J)V

    .line 353
    :cond_30
    return-void
.end method

.method private flushTasksWithDeadline(J)V
    .registers 6
    .param p1, "deadlineNs"    # J

    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 357
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/GapWorker$Task;

    .line 358
    .local v1, "task":Ltds/androidx/recyclerview/widget/GapWorker$Task;
    iget-object v2, v1, Ltds/androidx/recyclerview/widget/GapWorker$Task;->view:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_16

    .line 359
    goto :goto_1f

    .line 361
    :cond_16
    invoke-direct {p0, v1, p1, p2}, Ltds/androidx/recyclerview/widget/GapWorker;->flushTaskWithDeadline(Ltds/androidx/recyclerview/widget/GapWorker$Task;J)V

    .line 362
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/GapWorker$Task;->clear()V

    .line 356
    .end local v1    # "task":Ltds/androidx/recyclerview/widget/GapWorker$Task;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 364
    .end local v0    # "i":I
    :cond_1f
    :goto_1f
    return-void
.end method

.method static isPrefetchPositionAttached(Ltds/androidx/recyclerview/widget/RecyclerView;I)Z
    .registers 7
    .param p0, "view"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p1, "position"    # I

    .line 265
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 266
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_22

    .line 267
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 268
    .local v2, "attachedView":Landroid/view/View;
    invoke-static {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 270
    .local v3, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget v4, v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_1f

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 271
    const/4 v4, 0x1

    return v4

    .line 266
    .end local v2    # "attachedView":Landroid/view/View;
    .end local v3    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 274
    .end local v1    # "i":I
    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method private prefetchInnerRecyclerViewWithDeadline(Ltds/androidx/recyclerview/widget/RecyclerView;J)V
    .registers 7
    .param p1, "innerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "deadlineNs"    # J

    .line 312
    if-nez p1, :cond_3

    .line 313
    return-void

    .line 316
    :cond_3
    iget-boolean v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_12

    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    .line 317
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    if-eqz v0, :cond_12

    .line 320
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    .line 324
    :cond_12
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 325
    .local v0, "innerPrefetchRegistry":Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Ltds/androidx/recyclerview/widget/RecyclerView;Z)V

    .line 327
    iget v1, v0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v1, :cond_43

    .line 329
    :try_start_1c
    const-string v1, "RV Nested Prefetch"

    invoke-static {v1}, Ltds/androidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 330
    iget-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-object v2, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->prepareForNestedPrefetch(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 331
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    iget v2, v0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_3a

    .line 334
    iget-object v2, v0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v2, v2, v1

    .line 335
    .local v2, "innerPosition":I
    invoke-direct {p0, p1, v2, p2, p3}, Ltds/androidx/recyclerview/widget/GapWorker;->prefetchPositionWithDeadline(Ltds/androidx/recyclerview/widget/RecyclerView;IJ)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_3e

    .line 331
    nop

    .end local v2    # "innerPosition":I
    add-int/lit8 v1, v1, 0x2

    goto :goto_29

    .line 338
    .end local v1    # "i":I
    :cond_3a
    invoke-static {}, Ltds/androidx/core/os/TraceCompat;->endSection()V

    .line 339
    goto :goto_43

    .line 338
    :catchall_3e
    move-exception v1

    invoke-static {}, Ltds/androidx/core/os/TraceCompat;->endSection()V

    .line 339
    throw v1

    .line 341
    :cond_43
    :goto_43
    return-void
.end method

.method private prefetchPositionWithDeadline(Ltds/androidx/recyclerview/widget/RecyclerView;IJ)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 9
    .param p1, "view"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "position"    # I
    .param p3, "deadlineNs"    # J

    .line 279
    invoke-static {p1, p2}, Ltds/androidx/recyclerview/widget/GapWorker;->isPrefetchPositionAttached(Ltds/androidx/recyclerview/widget/RecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 281
    const/4 v0, 0x0

    return-object v0

    .line 284
    :cond_8
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 287
    .local v0, "recycler":Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 288
    invoke-virtual {v0, p2, v1, p3, p4}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 291
    .local v2, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_29

    .line 292
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_26

    .line 295
    iget-object v3, v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_29

    .line 301
    :cond_26
    invoke-virtual {v0, v2, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_2e

    .line 305
    :cond_29
    :goto_29
    invoke-virtual {p1, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 306
    nop

    .line 307
    return-object v2

    .line 305
    .end local v2    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :catchall_2e
    move-exception v2

    invoke-virtual {p1, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 306
    throw v2
.end method


# virtual methods
.method public add(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 163
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method postFromTraversal(Ltds/androidx/recyclerview/widget/RecyclerView;II)V
    .registers 8
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "prefetchDx"    # I
    .param p3, "prefetchDy"    # I

    .line 177
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 181
    iget-wide v0, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 182
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 183
    invoke-virtual {p1, p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 187
    :cond_17
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v0, p2, p3}, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    .line 188
    return-void
.end method

.method prefetch(J)V
    .registers 3
    .param p1, "deadlineNs"    # J

    .line 367
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/GapWorker;->buildTaskList()V

    .line 368
    invoke-direct {p0, p1, p2}, Ltds/androidx/recyclerview/widget/GapWorker;->flushTasksWithDeadline(J)V

    .line 369
    return-void
.end method

.method public remove(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 167
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 171
    .local v0, "removeSuccess":Z
    return-void
.end method

.method public run()V
    .registers 10

    .line 374
    const-wide/16 v0, 0x0

    :try_start_2
    const-string v2, "RV Prefetch"

    invoke-static {v2}, Ltds/androidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_57

    if-eqz v2, :cond_15

    .line 403
    iput-wide v0, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 404
    invoke-static {}, Ltds/androidx/core/os/TraceCompat;->endSection()V

    .line 378
    return-void

    .line 383
    :cond_15
    :try_start_15
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 384
    .local v2, "size":I
    const-wide/16 v3, 0x0

    .line 385
    .local v3, "latestFrameVsyncMs":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1e
    if-ge v5, v2, :cond_3a

    .line 386
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 387
    .local v6, "view":Ltds/androidx/recyclerview/widget/RecyclerView;
    invoke-virtual {v6}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_37

    .line 388
    invoke-virtual {v6}, Ltds/androidx/recyclerview/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v7

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7
    :try_end_36
    .catchall {:try_start_15 .. :try_end_36} :catchall_57

    move-wide v3, v7

    .line 385
    .end local v6    # "view":Ltds/androidx/recyclerview/widget/RecyclerView;
    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 392
    .end local v5    # "i":I
    :cond_3a
    cmp-long v5, v3, v0

    if-nez v5, :cond_44

    .line 403
    iput-wide v0, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 404
    invoke-static {}, Ltds/androidx/core/os/TraceCompat;->endSection()V

    .line 394
    return-void

    .line 397
    :cond_44
    :try_start_44
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    iget-wide v7, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mFrameIntervalNs:J

    add-long/2addr v5, v7

    .line 399
    .local v5, "nextFrameNs":J
    invoke-virtual {p0, v5, v6}, Ltds/androidx/recyclerview/widget/GapWorker;->prefetch(J)V
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_57

    .line 403
    .end local v2    # "size":I
    .end local v3    # "latestFrameVsyncMs":J
    .end local v5    # "nextFrameNs":J
    iput-wide v0, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 404
    invoke-static {}, Ltds/androidx/core/os/TraceCompat;->endSection()V

    .line 405
    nop

    .line 406
    return-void

    .line 403
    :catchall_57
    move-exception v2

    iput-wide v0, p0, Ltds/androidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 404
    invoke-static {}, Ltds/androidx/core/os/TraceCompat;->endSection()V

    .line 405
    throw v2
.end method