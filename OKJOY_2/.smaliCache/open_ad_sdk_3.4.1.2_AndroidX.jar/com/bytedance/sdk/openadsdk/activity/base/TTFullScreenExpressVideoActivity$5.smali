.class Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity$5;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;
.source "TTFullScreenExpressVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V
    .registers 6

    .line 558
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .registers 12

    .line 561
    invoke-super/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;IIII)V

    .line 562
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;->a(Landroid/view/View;IIII)V

    .line 563
    return-void
.end method
