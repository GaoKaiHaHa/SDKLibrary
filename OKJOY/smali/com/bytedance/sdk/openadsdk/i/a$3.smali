.class Lcom/bytedance/sdk/openadsdk/i/a$3;
.super Lcom/bytedance/sdk/openadsdk/i/c;
.source "TTExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/i/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/a;ILjava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 163
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a$3;->b:Lcom/bytedance/sdk/openadsdk/i/a;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/i/a$3;->a:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/i/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a$3;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 167
    return-void
.end method
