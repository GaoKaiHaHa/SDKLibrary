.class Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->l(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    new-instance v2, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e$a;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e;)V

    iget-object v3, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v3}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->m(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Lcom/kwad/sdk/core/download/g/b;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/g/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/g/a$a;Lcom/kwad/sdk/core/download/g/b;)V

    return-void
.end method