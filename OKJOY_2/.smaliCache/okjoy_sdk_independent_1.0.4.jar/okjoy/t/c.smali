.class public Lokjoy/t/c;
.super Landroid/app/Dialog;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokjoy/t/c$c;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/View;

.field public c:Landroid/widget/Button;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/Button;

.field public f:Z

.field public g:Lokjoy/t/c$c;

.field public h:Ljava/lang/String;

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "OkJoyRightAgeTipsDialogStyle"

    invoke-static {p1, v0}, Lokjoy/a/g;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokjoy/t/c;->f:Z

    iput-boolean v0, p0, Lokjoy/t/c;->i:Z

    iput-object p1, p0, Lokjoy/t/c;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lokjoy/t/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lokjoy/t/c;->f:Z

    return p1
.end method


# virtual methods
.method public cancel()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lokjoy/t/c;->a:Landroid/content/Context;

    const-string v0, "joy_dialog_right_age_tips_layout"

    invoke-static {p1, v0}, Lokjoy/a/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lokjoy/t/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lokjoy/t/c;->b:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lokjoy/t/c;->b:Landroid/view/View;

    iget-object v0, p0, Lokjoy/t/c;->a:Landroid/content/Context;

    const-string v1, "bgImageView"

    invoke-static {v0, v1}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p1, p0, Lokjoy/t/c;->b:Landroid/view/View;

    iget-object v0, p0, Lokjoy/t/c;->a:Landroid/content/Context;

    const-string v1, "sureButton"

    invoke-static {v0, v1}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/t/c;->c:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/t/c;->b:Landroid/view/View;

    iget-object v0, p0, Lokjoy/t/c;->a:Landroid/content/Context;

    const-string v1, "contentTextView"

    invoke-static {v0, v1}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lokjoy/t/c;->d:Landroid/widget/TextView;

    iget-object p1, p0, Lokjoy/t/c;->b:Landroid/view/View;

    iget-object v0, p0, Lokjoy/t/c;->a:Landroid/content/Context;

    const-string v1, "agreeButton"

    invoke-static {v0, v1}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/t/c;->e:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/t/c;->b:Landroid/view/View;

    iget-object v0, p0, Lokjoy/t/c;->a:Landroid/content/Context;

    const-string v1, "tipsTextView"

    invoke-static {v0, v1}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p1, p0, Lokjoy/t/c;->e:Landroid/widget/Button;

    new-instance v0, Lokjoy/t/c$a;

    invoke-direct {v0, p0}, Lokjoy/t/c$a;-><init>(Lokjoy/t/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lokjoy/t/c;->c:Landroid/widget/Button;

    new-instance v0, Lokjoy/t/c$b;

    invoke-direct {v0, p0}, Lokjoy/t/c$b;-><init>(Lokjoy/t/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public show()V
    .registers 6

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 1
    iget-object v0, p0, Lokjoy/t/c;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lokjoy/t/c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lokjoy/t/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    iget-boolean v0, p0, Lokjoy/t/c;->i:Z

    if-nez v0, :cond_4c

    iget-object v0, p0, Lokjoy/t/c;->b:Landroid/view/View;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lokjoy/t/c;->c:Landroid/widget/Button;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    iget-object v1, p0, Lokjoy/t/c;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lokjoy/t/c;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v2, p0, Lokjoy/t/c;->a:Landroid/content/Context;

    const-string v3, "sureButton"

    invoke-static {v2, v3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lokjoy/t/c;->a:Landroid/content/Context;

    const-string v4, "bgImageView"

    invoke-static {v3, v4}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_4c
    return-void
.end method