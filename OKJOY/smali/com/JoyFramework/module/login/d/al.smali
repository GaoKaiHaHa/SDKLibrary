.class Lcom/JoyFramework/module/login/d/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/remote/bean/w;

.field final synthetic b:Lcom/JoyFramework/module/login/d/ai;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/d/ai;Lcom/JoyFramework/remote/bean/w;)V
    .registers 3

    .prologue
    .line 199
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/al;->b:Lcom/JoyFramework/module/login/d/ai;

    iput-object p2, p0, Lcom/JoyFramework/module/login/d/al;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 203
    new-instance v0, Lcom/JoyFramework/user/LoginUser;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/al;->b:Lcom/JoyFramework/module/login/d/ai;

    invoke-static {v1}, Lcom/JoyFramework/module/login/d/ai;->c(Lcom/JoyFramework/module/login/d/ai;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/al;->b:Lcom/JoyFramework/module/login/d/ai;

    invoke-static {v2}, Lcom/JoyFramework/module/login/d/ai;->d(Lcom/JoyFramework/module/login/d/ai;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/JoyFramework/user/LoginUser$LoginType;->PHONE_CODE:Lcom/JoyFramework/user/LoginUser$LoginType;

    invoke-direct {v0, v1, v2, v3}, Lcom/JoyFramework/user/LoginUser;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/user/LoginUser$LoginType;)V

    .line 204
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/al;->b:Lcom/JoyFramework/module/login/d/ai;

    invoke-virtual {v1}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Lcom/JoyFramework/user/LoginUser;)V

    .line 207
    new-instance v0, Lcom/JoyFramework/d/cc;

    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v1

    iget-object v1, v1, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/JoyFramework/d/cc;-><init>(Landroid/content/Context;)V

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/al;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v2}, Lcom/JoyFramework/remote/bean/w;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , \u6b22\u8fce\u56de\u6765 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/JoyFramework/d/cc;->a(Ljava/lang/String;I)V

    .line 209
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/al;->b:Lcom/JoyFramework/module/login/d/ai;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 210
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/al;->b:Lcom/JoyFramework/module/login/d/ai;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 212
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/al;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/c/e;->a(ILjava/lang/Object;)V

    .line 213
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 219
    new-instance v0, Lcom/JoyFramework/d/cc;

    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v1

    iget-object v1, v1, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/JoyFramework/d/cc;-><init>(Landroid/content/Context;)V

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/al;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v2}, Lcom/JoyFramework/remote/bean/w;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , \u6b22\u8fce\u56de\u6765 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/JoyFramework/d/cc;->a(Ljava/lang/String;I)V

    .line 221
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/al;->b:Lcom/JoyFramework/module/login/d/ai;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 222
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/al;->b:Lcom/JoyFramework/module/login/d/ai;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/ai;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 224
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/al;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/c/e;->a(ILjava/lang/Object;)V

    .line 225
    return-void
.end method