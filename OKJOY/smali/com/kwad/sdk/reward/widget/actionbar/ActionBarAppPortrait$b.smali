.class Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/download/g/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$b;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$b;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;->d(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;)Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$c;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$b;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;->d(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;)Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$c;->onAdClicked()V

    :cond_11
    return-void
.end method
