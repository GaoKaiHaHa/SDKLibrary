.class Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/recyclerview/widget/DefaultItemAnimator;->animateMoveImpl(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/DefaultItemAnimator;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .registers 7
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    .line 292
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->val$holder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->val$deltaX:I

    iput-object p4, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->val$view:Landroid/view/View;

    iput p5, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->val$deltaY:I

    iput-object p6, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 300
    iget v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->val$deltaX:I

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 301
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 303
    :cond_a
    iget v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->val$deltaY:I

    if-eqz v0, :cond_13

    .line 304
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 306
    :cond_13
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 310
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 311
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->val$holder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 312
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->val$holder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 314
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 295
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$6;->val$holder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveStarting(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 296
    return-void
.end method