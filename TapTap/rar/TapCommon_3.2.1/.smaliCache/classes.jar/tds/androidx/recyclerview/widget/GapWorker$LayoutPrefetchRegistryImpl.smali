.class Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutPrefetchRegistryImpl"
.end annotation


# instance fields
.field mCount:I

.field mPrefetchArray:[I

.field mPrefetchDx:I

.field mPrefetchDy:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPosition(II)V
    .registers 8
    .param p1, "layoutPosition"    # I
    .param p2, "pixelDistance"    # I

    .line 112
    if-ltz p1, :cond_3d

    .line 116
    if-ltz p2, :cond_35

    .line 121
    iget v0, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v0, v0, 0x2

    .line 122
    .local v0, "storagePosition":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-nez v1, :cond_16

    .line 123
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 124
    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_26

    .line 125
    :cond_16
    array-length v1, v1

    if-lt v0, v1, :cond_26

    .line 126
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 127
    .local v1, "oldArray":[I
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 128
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    .end local v1    # "oldArray":[I
    :cond_26
    :goto_26
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aput p1, v1, v0

    .line 133
    add-int/lit8 v2, v0, 0x1

    aput p2, v1, v2

    .line 135
    iget v1, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 136
    return-void

    .line 117
    .end local v0    # "storagePosition":I
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pixel distance must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Layout positions must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method clearPrefetchPositions()V
    .registers 3

    .line 152
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_8

    .line 153
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 155
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 156
    return-void
.end method

.method collectPrefetchPositionsFromView(Ltds/androidx/recyclerview/widget/RecyclerView;Z)V
    .registers 7
    .param p1, "view"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "nested"    # Z

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 80
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_b

    .line 81
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 84
    :cond_b
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 85
    .local v0, "layout":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    iget-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_4d

    if-eqz v0, :cond_4d

    .line 87
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 88
    if-eqz p2, :cond_2d

    .line 91
    iget-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 92
    iget-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->collectInitialPrefetchPositions(ILtds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    goto :goto_3c

    .line 96
    :cond_2d
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 97
    iget v1, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    iget v2, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    iget-object v3, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2, v3, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->collectAdjacentPrefetchPositions(IILtds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    .line 102
    :cond_3c
    :goto_3c
    iget v1, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iget v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    if-le v1, v2, :cond_4d

    .line 103
    iget v1, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iput v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 104
    iput-boolean p2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 105
    iget-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 108
    :cond_4d
    return-void
.end method

.method lastPrefetchIncludedPosition(I)Z
    .registers 5
    .param p1, "position"    # I

    .line 139
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_16

    .line 140
    iget v0, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v0, v0, 0x2

    .line 141
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_16

    .line 142
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_13

    const/4 v2, 0x1

    return v2

    .line 141
    :cond_13
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    .line 145
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method setPrefetchVector(II)V
    .registers 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 74
    iput p1, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    .line 75
    iput p2, p0, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    .line 76
    return-void
.end method
