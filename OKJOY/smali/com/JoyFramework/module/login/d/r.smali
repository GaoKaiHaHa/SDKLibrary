.class Lcom/JoyFramework/module/login/d/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$e;


# instance fields
.field final synthetic a:Lcom/JoyFramework/remote/bean/w;

.field final synthetic b:Lcom/JoyFramework/module/login/d/k;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/d/k;Lcom/JoyFramework/remote/bean/w;)V
    .registers 3

    .prologue
    .line 486
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/r;->b:Lcom/JoyFramework/module/login/d/k;

    iput-object p2, p0, Lcom/JoyFramework/module/login/d/r;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 489
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/r;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/k;->d(Lcom/JoyFramework/module/login/d/k;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 490
    new-instance v0, Lcom/JoyFramework/module/login/d/am;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/am;-><init>()V

    .line 491
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/r;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v1}, Lcom/JoyFramework/remote/bean/w;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 492
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 493
    const-string v2, "use_mobile_num"

    iget-object v3, p0, Lcom/JoyFramework/module/login/d/r;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v3}, Lcom/JoyFramework/remote/bean/w;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v2, "canBackStack"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 495
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/login/d/am;->setArguments(Landroid/os/Bundle;)V

    .line 497
    :cond_34
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/r;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-static {v1, v0, v4}, Lcom/JoyFramework/module/login/d/k;->a(Lcom/JoyFramework/module/login/d/k;Landroid/app/Fragment;Z)V

    .line 498
    return-void
.end method
