.class Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$2;
.super Ljava/lang/Object;
.source "FullRewardExpressView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->b(Lcom/bytedance/sdk/openadsdk/core/d/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/o;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;Lcom/bytedance/sdk/openadsdk/core/d/o;)V
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->a(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;Lcom/bytedance/sdk/openadsdk/core/d/o;)V

    .line 114
    return-void
.end method
