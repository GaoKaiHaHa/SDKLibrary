.class Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnchorInfo"
.end annotation


# instance fields
.field mCoordinate:I

.field mLayoutFromEnd:Z

.field mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

.field mPosition:I

.field mValid:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2483
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 2484
    return-void
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .registers 2

    .line 2498
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 2499
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 2500
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_11
    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2501
    return-void
.end method

.method public assignFromView(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 2567
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_14

    .line 2568
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 2569
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_1c

    .line 2571
    :cond_14
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2574
    :goto_1c
    iput p2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2575
    return-void
.end method

.method public assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V
    .registers 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 2520
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v0

    .line 2521
    .local v0, "spaceChange":I
    if-ltz v0, :cond_c

    .line 2522
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;I)V

    .line 2523
    return-void

    .line 2525
    :cond_c
    iput p2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2526
    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_57

    .line 2527
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2528
    .local v1, "prevLayoutEnd":I
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    .line 2529
    .local v3, "childEnd":I
    sub-int v4, v1, v3

    .line 2530
    .local v4, "previousEndMargin":I
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr v5, v4

    iput v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2532
    if-lez v4, :cond_56

    .line 2533
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    .line 2534
    .local v5, "childSize":I
    iget v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    sub-int/2addr v6, v5

    .line 2535
    .local v6, "estimatedChildStart":I
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    .line 2536
    .local v7, "layoutStart":I
    iget-object v8, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v8, v7

    .line 2538
    .local v8, "previousStartMargin":I
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v7

    .line 2539
    .local v2, "startReference":I
    sub-int v9, v6, v2

    .line 2540
    .local v9, "startMargin":I
    if-gez v9, :cond_56

    .line 2542
    iget v10, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int v11, v9

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2545
    .end local v1    # "prevLayoutEnd":I
    .end local v2    # "startReference":I
    .end local v3    # "childEnd":I
    .end local v4    # "previousEndMargin":I
    .end local v5    # "childSize":I
    .end local v6    # "estimatedChildStart":I
    .end local v7    # "layoutStart":I
    .end local v8    # "previousStartMargin":I
    .end local v9    # "startMargin":I
    :cond_56
    goto :goto_98

    .line 2546
    :cond_57
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    .line 2547
    .local v1, "childStart":I
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v3, v1, v3

    .line 2548
    .local v3, "startMargin":I
    iput v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2549
    if-lez v3, :cond_98

    .line 2550
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 2551
    invoke-virtual {v4, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v1

    .line 2552
    .local v4, "estimatedEnd":I
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr v5, v0

    .line 2554
    .local v5, "previousLayoutEnd":I
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 2555
    invoke-virtual {v6, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int v6, v5, v6

    .line 2556
    .local v6, "previousEndMargin":I
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    .line 2557
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v7, v2

    .line 2558
    .local v7, "endReference":I
    sub-int v2, v7, v4

    .line 2559
    .local v2, "endMargin":I
    if-gez v2, :cond_98

    .line 2560
    iget v8, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int v9, v2

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2564
    .end local v1    # "childStart":I
    .end local v2    # "endMargin":I
    .end local v3    # "startMargin":I
    .end local v4    # "estimatedEnd":I
    .end local v5    # "previousLayoutEnd":I
    .end local v6    # "previousEndMargin":I
    .end local v7    # "endReference":I
    :cond_98
    :goto_98
    return-void
.end method

.method isViewValidAsAnchor(Landroid/view/View;Ltds/androidx/recyclerview/widget/RecyclerView$State;)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 2514
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2515
    .local v0, "lp":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    if-ltz v1, :cond_1e

    .line 2516
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 2515
    :goto_1f
    return v1
.end method

.method reset()V
    .registers 2

    .line 2487
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2488
    const/high16 v0, -0x80000000

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2489
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 2490
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 2491
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
