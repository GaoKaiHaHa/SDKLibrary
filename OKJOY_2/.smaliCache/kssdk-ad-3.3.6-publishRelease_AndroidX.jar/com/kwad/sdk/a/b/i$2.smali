.class Lcom/kwad/sdk/a/b/i$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/download/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/a/b/i;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/a/b/i;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a/b/i;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/a/b/i$2;->a:Lcom/kwad/sdk/a/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/a/b/i$2;->a:Lcom/kwad/sdk/a/b/i;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/i;->b(Lcom/kwad/sdk/a/b/i;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/a/b/i$2;->a:Lcom/kwad/sdk/a/b/i;

    invoke-static {v1}, Lcom/kwad/sdk/a/b/i;->c(Lcom/kwad/sdk/a/b/i;)Lcom/kwad/sdk/a/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/kwad/sdk/a/a/b;->c:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/o$a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/utils/o$a;)V

    return-void
.end method
