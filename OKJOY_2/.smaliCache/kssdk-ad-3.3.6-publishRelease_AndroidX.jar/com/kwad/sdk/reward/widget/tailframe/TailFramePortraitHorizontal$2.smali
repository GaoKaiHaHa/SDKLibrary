.class Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/download/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$2;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$2;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/reward/widget/tailframe/b;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$2;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->e(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/reward/widget/tailframe/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/reward/widget/tailframe/b;->a()V

    :cond_11
    return-void
.end method
