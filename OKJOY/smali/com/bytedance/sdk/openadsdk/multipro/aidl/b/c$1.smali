.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c$1;
.super Ljava/lang/Object;
.source "FullScreenVideoListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->onAdShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;->onAdShow()V

    .line 45
    :cond_11
    return-void
.end method