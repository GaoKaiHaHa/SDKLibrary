.class Lcom/kwad/sdk/draw/b/b$2;
.super Lcom/kwad/sdk/core/download/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/draw/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/b/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b;->h(Lcom/kwad/sdk/draw/b/b;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v1}, Lcom/kwad/sdk/draw/b/b;->g(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b;->i(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v1}, Lcom/kwad/sdk/draw/b/b;->g(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v2}, Lcom/kwad/sdk/draw/b/b;->i(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onDownloadFinished()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b;->h(Lcom/kwad/sdk/draw/b/b;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v1}, Lcom/kwad/sdk/draw/b/b;->j(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b;->i(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v1}, Lcom/kwad/sdk/draw/b/b;->j(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v2}, Lcom/kwad/sdk/draw/b/b;->i(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onIdle()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b;->h(Lcom/kwad/sdk/draw/b/b;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v1}, Lcom/kwad/sdk/draw/b/b;->g(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b;->i(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v1}, Lcom/kwad/sdk/draw/b/b;->g(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v2}, Lcom/kwad/sdk/draw/b/b;->i(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onInstalled()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b;->h(Lcom/kwad/sdk/draw/b/b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/core/response/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b;->i(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/core/response/b/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v2}, Lcom/kwad/sdk/draw/b/b;->i(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onProgressUpdate(I)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b;->h(Lcom/kwad/sdk/draw/b/b;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b$2;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b;->i(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->a(Ljava/lang/String;I)V

    return-void
.end method
