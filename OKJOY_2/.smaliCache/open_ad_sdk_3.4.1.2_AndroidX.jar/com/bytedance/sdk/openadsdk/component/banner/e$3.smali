.class Lcom/bytedance/sdk/openadsdk/component/banner/e$3;
.super Ljava/lang/Object;
.source "TTBannerAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/c;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/banner/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V
    .registers 2

    .line 345
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 4

    .line 348
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->g(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 349
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->g(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;->onAdClicked(Landroid/view/View;I)V

    .line 351
    :cond_11
    return-void
.end method
