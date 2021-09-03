.class public abstract Ltds/androidx/recyclerview/widget/SimpleItemAnimator;
.super Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;
.source "SimpleItemAnimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimpleItemAnimator"


# instance fields
.field mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract animateAdd(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
.end method

.method public animateAppearance(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .registers 12
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 114
    if-eqz p2, :cond_1d

    iget v0, p2, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_e

    iget v0, p2, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_1d

    .line 120
    :cond_e
    iget v4, p2, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v5, p2, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v6, p3, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v7, p3, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->animateMove(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    .line 126
    :cond_1d
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->animateAdd(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public abstract animateChange(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animateChange(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .registers 16
    .param p1, "oldHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "preInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p4, "postInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 151
    iget v7, p3, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 152
    .local v7, "fromLeft":I
    iget v8, p3, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 154
    .local v8, "fromTop":I
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 155
    iget v0, p3, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 156
    .local v0, "toLeft":I
    iget v1, p3, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v9, v0

    move v10, v1

    .local v1, "toTop":I
    goto :goto_17

    .line 158
    .end local v0    # "toLeft":I
    .end local v1    # "toTop":I
    :cond_11
    iget v0, p4, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 159
    .restart local v0    # "toLeft":I
    iget v1, p4, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v9, v0

    move v10, v1

    .line 161
    .end local v0    # "toLeft":I
    .local v9, "toLeft":I
    .local v10, "toTop":I
    :goto_17
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->animateChange(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0
.end method

.method public animateDisappearance(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .registers 15
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 90
    iget v6, p2, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 91
    .local v6, "oldLeft":I
    iget v7, p2, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 92
    .local v7, "oldTop":I
    iget-object v8, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 93
    .local v8, "disappearingItemView":Landroid/view/View;
    if-nez p3, :cond_d

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_f

    :cond_d
    iget v0, p3, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    :goto_f
    move v9, v0

    .line 94
    .local v9, "newLeft":I
    if-nez p3, :cond_17

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_19

    :cond_17
    iget v0, p3, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    :goto_19
    move v10, v0

    .line 95
    .local v10, "newTop":I
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_3d

    if-ne v6, v9, :cond_24

    if-eq v7, v10, :cond_3d

    .line 96
    :cond_24
    nop

    .line 97
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v9

    .line 98
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v10

    .line 96
    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 102
    move-object v0, p0

    move-object v1, p1

    move v2, v6

    move v3, v7

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->animateMove(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    .line 107
    :cond_3d
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->animateRemove(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public abstract animateMove(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animatePersistence(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .registers 11
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "preInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 133
    iget v0, p2, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_12

    iget v0, p2, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_d

    goto :goto_12

    .line 141
    :cond_d
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 142
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_12
    :goto_12
    iget v3, p2, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v4, p2, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v5, p3, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v6, p3, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->animateMove(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0
.end method

.method public abstract animateRemove(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
.end method

.method public canReuseUpdatedViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 84
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public final dispatchAddFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 301
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->onAddFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 302
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->dispatchAnimationFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 303
    return-void
.end method

.method public final dispatchAddStarting(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 344
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->onAddStarting(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 345
    return-void
.end method

.method public final dispatchChangeFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .registers 3
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .line 316
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->onChangeFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 317
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->dispatchAnimationFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 318
    return-void
.end method

.method public final dispatchChangeStarting(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .registers 3
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .line 357
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->onChangeStarting(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 358
    return-void
.end method

.method public final dispatchMoveFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 291
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->onMoveFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 292
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->dispatchAnimationFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 293
    return-void
.end method

.method public final dispatchMoveStarting(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 335
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->onMoveStarting(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 336
    return-void
.end method

.method public final dispatchRemoveFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 276
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->onRemoveFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 277
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->dispatchAnimationFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 278
    return-void
.end method

.method public final dispatchRemoveStarting(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 326
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->onRemoveStarting(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 327
    return-void
.end method

.method public getSupportsChangeAnimations()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return v0
.end method

.method public onAddFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 404
    return-void
.end method

.method public onAddStarting(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 393
    return-void
.end method

.method public onChangeFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .registers 3
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .line 454
    return-void
.end method

.method public onChangeStarting(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .registers 3
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .line 441
    return-void
.end method

.method public onMoveFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 427
    return-void
.end method

.method public onMoveStarting(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 416
    return-void
.end method

.method public onRemoveFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 381
    return-void
.end method

.method public onRemoveStarting(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 370
    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .registers 2
    .param p1, "supportsChangeAnimations"    # Z

    .line 71
    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    .line 72
    return-void
.end method
