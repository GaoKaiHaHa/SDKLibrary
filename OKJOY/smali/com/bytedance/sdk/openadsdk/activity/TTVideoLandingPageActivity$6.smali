.class Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$6;
.super Ljava/lang/Object;
.source "TTVideoLandingPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 403
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$6;->b:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$6;->b:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->e(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$6;->b:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 407
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$6;->b:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->e(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 409
    :cond_1b
    return-void
.end method
