.class Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation$1;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;)V
    .registers 2
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 2410
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation$1;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 2413
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation$1;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2414
    return-void
.end method
