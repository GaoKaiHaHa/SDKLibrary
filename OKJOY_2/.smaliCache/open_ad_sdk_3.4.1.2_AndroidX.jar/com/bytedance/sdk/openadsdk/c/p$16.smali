.class Lcom/bytedance/sdk/openadsdk/c/p$16;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "WebviewTimeTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/c/p;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/c/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/c/p;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/p$16;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/p$16;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 121
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 122
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 123
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/p$16;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    const-string v5, "ts"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v3, v5, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$16;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/p;->b(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "native_render_start"

    invoke-static {v1, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    monitor-exit v0

    .line 127
    return-void

    .line 125
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v1
.end method