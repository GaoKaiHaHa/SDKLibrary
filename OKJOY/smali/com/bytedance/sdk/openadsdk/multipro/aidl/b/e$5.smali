.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$5;
.super Ljava/lang/Object;
.source "TTAppDownloadListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 135
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$5;->d:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$5;->a:J

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$5;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$5;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$5;->d:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 143
    :goto_8
    return-void

    .line 142
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$5;->d:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->b(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$5;->a:J

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$5;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$5;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method