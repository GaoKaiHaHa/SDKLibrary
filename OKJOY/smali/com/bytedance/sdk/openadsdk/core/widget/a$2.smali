.class Lcom/bytedance/sdk/openadsdk/core/widget/a$2;
.super Ljava/lang/Object;
.source "CustomCommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/a;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    if-eqz v0, :cond_d

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a$a;->b()V

    .line 102
    :cond_d
    return-void
.end method
