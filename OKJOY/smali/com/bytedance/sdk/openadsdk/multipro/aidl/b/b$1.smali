.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b$1;
.super Ljava/lang/Object;
.source "CommonPermissionListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->onGranted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;)Lcom/bytedance/sdk/openadsdk/utils/h$a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;)Lcom/bytedance/sdk/openadsdk/utils/h$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/h$a;->a()V

    .line 35
    :cond_11
    return-void
.end method
