.class final Lcom/bytedance/sdk/openadsdk/utils/h$3;
.super Ljava/lang/Object;
.source "CommonPermissionUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/h;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/utils/h$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/h$a;)V
    .registers 3

    .line 94
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/h$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/h$3;->b:Lcom/bytedance/sdk/openadsdk/utils/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 98
    const-string v0, "MultiProcess"

    :try_start_2
    const-string v1, "getListenerManager().registerPermissionListener..."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/h;->a()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/h$3;->a:Ljava/lang/String;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/utils/h$3;->b:Lcom/bytedance/sdk/openadsdk/utils/h$a;

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;-><init>(Lcom/bytedance/sdk/openadsdk/utils/h$a;)V

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerPermissionListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;)V
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_18

    .line 103
    goto :goto_23

    .line 100
    :catchall_18
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_23
    return-void
.end method
