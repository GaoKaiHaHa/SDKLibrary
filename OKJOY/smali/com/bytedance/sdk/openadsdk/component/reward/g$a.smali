.class Lcom/bytedance/sdk/openadsdk/component/reward/g$a;
.super Ljava/lang/Object;
.source "RewardVideoLoadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field b:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/reward/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/g;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 4

    .prologue
    .line 347
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$a;->c:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$a;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 349
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$a;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 350
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$a;->c:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$a;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/g$a$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g$a$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/g$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/component/reward/e$a;)V

    .line 362
    return-void
.end method
