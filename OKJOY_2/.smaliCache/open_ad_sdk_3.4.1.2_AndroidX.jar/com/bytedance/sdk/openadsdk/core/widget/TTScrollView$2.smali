.class Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView$2;
.super Ljava/lang/Object;
.source "TTScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->smoothScrollTo(II)V

    .line 90
    return-void
.end method