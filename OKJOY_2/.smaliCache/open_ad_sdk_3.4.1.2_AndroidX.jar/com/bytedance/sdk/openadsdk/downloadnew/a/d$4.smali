.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$4;
.super Ljava/lang/Object;
.source "DMLibManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$b;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$b;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 4

    .line 983
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$4;->c:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$4;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$b;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$4;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 986
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$4;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$b;

    if-eqz v0, :cond_7

    .line 987
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$b;->a()V

    .line 989
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$4;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$4;->c:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$4;->c:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "pop_up_download"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 990
    return-void
.end method

.method public b()V
    .registers 1

    .line 995
    return-void
.end method

.method public c()V
    .registers 6

    .line 999
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$4;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$4;->c:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$4;->c:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "pop_up_cancel"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1000
    return-void
.end method
