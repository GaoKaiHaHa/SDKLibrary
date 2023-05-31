.class Ltds/androidx/recyclerview/widget/LayoutState;
.super Ljava/lang/Object;
.source "LayoutState.java"


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mEndLine:I

.field mInfinite:Z

.field mItemDirection:I

.field mLayoutDirection:I

.field mRecycle:Z

.field mStartLine:I

.field mStopInFocusable:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/LayoutState;->mStartLine:I

    .line 72
    iput v0, p0, Ltds/androidx/recyclerview/widget/LayoutState;->mEndLine:I

    return-void
.end method


# virtual methods
.method hasMore(Ltds/androidx/recyclerview/widget/RecyclerView$State;)Z
    .registers 4
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 88
    iget v0, p0, Ltds/androidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    if-ltz v0, :cond_c

    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method next(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;
    .registers 5
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 98
    iget v0, p0, Ltds/androidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Ltds/androidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    iget v2, p0, Ltds/androidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, p0, Ltds/androidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 100
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayoutState{mAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltds/androidx/recyclerview/widget/LayoutState;->mAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltds/androidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltds/androidx/recyclerview/widget/LayoutState;->mItemDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltds/androidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltds/androidx/recyclerview/widget/LayoutState;->mStartLine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEndLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltds/androidx/recyclerview/widget/LayoutState;->mEndLine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method