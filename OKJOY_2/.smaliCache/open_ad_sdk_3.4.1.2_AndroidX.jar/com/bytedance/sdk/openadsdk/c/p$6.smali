.class Lcom/bytedance/sdk/openadsdk/c/p$6;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "WebviewTimeTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/c/p;->k()V
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

    .line 254
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/p$6;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/p$6;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 258
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 259
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 260
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/p$6;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    const-string v5, "ts"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v3, v5, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$6;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    const-string v2, "type"

    const-string v4, "native_enterForeground"

    invoke-static {v1, v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$6;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/p;->c(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONArray;Ljava/lang/Object;)V

    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v1
.end method
