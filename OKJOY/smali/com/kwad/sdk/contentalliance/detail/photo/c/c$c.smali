.class Lcom/kwad/sdk/contentalliance/detail/photo/c/c$c;
.super Lcom/kwad/sdk/contentalliance/detail/video/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/detail/photo/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    invoke-static {}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->a(Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageVisible position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->j(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoLogPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->f(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)V

    goto :goto_6
.end method

.method public b()V
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->a(Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeFragment onInvisible position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->j(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoLogPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method