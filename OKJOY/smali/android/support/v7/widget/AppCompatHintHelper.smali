.class Landroid/support/v7/widget/AppCompatHintHelper;
.super Ljava/lang/Object;
.source "AppCompatHintHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 28
    if-eqz p0, :cond_1a

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v1, :cond_1a

    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 32
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_a
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 33
    instance-of v1, v0, Landroid/support/v7/widget/WithHint;

    if-eqz v1, :cond_1b

    .line 34
    check-cast v0, Landroid/support/v7/widget/WithHint;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-interface {v0}, Landroid/support/v7/widget/WithHint;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 40
    :cond_1a
    return-object p0

    .line 37
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_1b
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_a
.end method
