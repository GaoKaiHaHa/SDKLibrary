.class Lcom/bytedance/sdk/openadsdk/component/splash/b$11;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/g/a/c;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/splash/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 3

    .line 1232
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$11;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$11;->a:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$11;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$11;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$11;->a:Lcom/bytedance/sdk/openadsdk/g/a/c;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    const/16 v1, 0x3a9c

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v8

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 1236
    return-void
.end method
