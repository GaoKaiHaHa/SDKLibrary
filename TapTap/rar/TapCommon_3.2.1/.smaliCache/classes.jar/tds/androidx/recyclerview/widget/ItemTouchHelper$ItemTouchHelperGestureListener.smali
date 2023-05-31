.class Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field private mShouldReactToLongPress:Z

.field final synthetic this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/ItemTouchHelper;)V
    .registers 2

    .line 2313
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2311
    const/4 p1, 0x1

    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    .line 2314
    return-void
.end method


# virtual methods
.method doNotReactToLongPress()V
    .registers 2

    .line 2321
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    .line 2322
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2326
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2331
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    if-nez v0, :cond_5

    .line 2332
    return-void

    .line 2334
    :cond_5
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 2335
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_60

    .line 2336
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2337
    .local v1, "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_60

    .line 2338
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3, v1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->hasDragFlag(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 2339
    return-void

    .line 2341
    :cond_26
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2345
    .local v2, "pointerId":I
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget v3, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    if-ne v2, v3, :cond_60

    .line 2346
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget v3, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 2347
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 2348
    .local v4, "x":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 2349
    .local v5, "y":F
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iput v4, v6, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 2350
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iput v5, v6, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 2351
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    const/4 v7, 0x0

    iput v7, v6, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    iput v7, v6, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 2356
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v6, v6, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {v6}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 2357
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    const/4 v7, 0x2

    invoke-virtual {v6, v1, v7}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->select(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 2362
    .end local v1    # "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v2    # "pointerId":I
    .end local v3    # "index":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_60
    return-void
.end method
