.class Lcom/bytedance/sdk/openadsdk/b/b$1;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "LruDiskFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/b/b;->a(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/j/f;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/b/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/b/b;ILcom/bytedance/sdk/openadsdk/j/f;)V
    .registers 4

    .line 25
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/b$1;->b:Lcom/bytedance/sdk/openadsdk/b/b;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/j/f;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/j/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/j/f;->run()V

    .line 29
    return-void
.end method
