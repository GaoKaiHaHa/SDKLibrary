.class Lcom/bytedance/sdk/openadsdk/utils/ai$3$1;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/ai$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/utils/ai$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/ai$3;Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 801
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/ai$3$1;->b:Lcom/bytedance/sdk/openadsdk/utils/ai$3;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/ai$3$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 804
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ai$3$1;->b:Lcom/bytedance/sdk/openadsdk/utils/ai$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/utils/ai$3;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/ai$3$1;->b:Lcom/bytedance/sdk/openadsdk/utils/ai$3;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/utils/ai$3;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/ai$3$1;->b:Lcom/bytedance/sdk/openadsdk/utils/ai$3;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/utils/ai$3;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/utils/ai$3$1;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 805
    return-void
.end method
