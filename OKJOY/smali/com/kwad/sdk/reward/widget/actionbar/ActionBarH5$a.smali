.class Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/download/g/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5;->a(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5;)Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5$b;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5;->a(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5;)Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5$b;->onAdClicked()V

    :cond_11
    return-void
.end method
