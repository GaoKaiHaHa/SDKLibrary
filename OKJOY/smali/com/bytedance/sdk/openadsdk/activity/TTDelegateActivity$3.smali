.class Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$3;
.super Ljava/lang/Object;
.source "TTDelegateActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/widget/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 233
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$3;->b:Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$3;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$3;->b:Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->finish()V

    .line 238
    return-void
.end method

.method public b(Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$3;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/g;->b(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$3;->b:Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->finish()V

    .line 244
    return-void
.end method
