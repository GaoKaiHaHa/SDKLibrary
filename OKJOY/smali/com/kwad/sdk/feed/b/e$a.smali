.class Lcom/kwad/sdk/feed/b/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/h/e/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/feed/b/e;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/feed/b/e;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/b/e;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/b/e$a;->a:Lcom/kwad/sdk/feed/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/e$a;->a:Lcom/kwad/sdk/feed/b/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/b/e;->b(Lcom/kwad/sdk/feed/b/e;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method public a(J)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/e$a;->a:Lcom/kwad/sdk/feed/b/e;

    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/feed/b/e;->a(Lcom/kwad/sdk/feed/b/e;J)V

    return-void
.end method

.method public onVideoPlayStart()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/e$a;->a:Lcom/kwad/sdk/feed/b/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/b/e;->a(Lcom/kwad/sdk/feed/b/e;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method
