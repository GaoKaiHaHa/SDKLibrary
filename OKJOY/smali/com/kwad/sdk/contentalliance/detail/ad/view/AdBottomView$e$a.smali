.class Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/download/g/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e$a;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e$a;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$e;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;I)V

    return-void
.end method