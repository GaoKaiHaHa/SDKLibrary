.class final Lcom/JoyFramework/d/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/e$c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/e$c;)V
    .registers 2

    .prologue
    .line 635
    iput-object p1, p0, Lcom/JoyFramework/d/p;->a:Lcom/JoyFramework/d/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 638
    invoke-static {}, Lcom/JoyFramework/d/e;->i()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 639
    invoke-static {}, Lcom/JoyFramework/d/e;->i()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 640
    invoke-static {v1}, Lcom/JoyFramework/d/e;->c(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 641
    invoke-static {v1}, Lcom/JoyFramework/d/e;->c(Landroid/view/View;)Landroid/view/View;

    .line 643
    :cond_14
    iget-object v0, p0, Lcom/JoyFramework/d/p;->a:Lcom/JoyFramework/d/e$c;

    if-eqz v0, :cond_1d

    .line 644
    iget-object v0, p0, Lcom/JoyFramework/d/p;->a:Lcom/JoyFramework/d/e$c;

    invoke-interface {v0}, Lcom/JoyFramework/d/e$c;->b()V

    .line 647
    :cond_1d
    return-void
.end method