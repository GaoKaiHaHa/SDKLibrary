.class Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$16;
.super Ljava/lang/Object;
.source "TTBaseVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 2770
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$16;->f:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$16;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$16;->b:J

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$16;->c:J

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$16;->d:Ljava/lang/String;

    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$16;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 2774
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$16;->f:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$16;->f:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$16;->a:Ljava/lang/String;

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$16;->b:J

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$16;->c:J

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$16;->d:Ljava/lang/String;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$16;->e:Ljava/lang/String;

    invoke-interface/range {v2 .. v10}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->executeAppDownloadCallback(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    .line 2777
    goto :goto_21

    .line 2775
    :catchall_19
    move-exception v0

    .line 2776
    const-string v1, "TTBaseVideoActivity"

    const-string v2, "executeAppDownloadCallback execute throw Exception : "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2778
    :goto_21
    return-void
.end method
