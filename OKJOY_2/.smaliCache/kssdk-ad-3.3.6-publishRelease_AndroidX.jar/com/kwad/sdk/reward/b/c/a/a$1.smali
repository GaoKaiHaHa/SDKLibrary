.class Lcom/kwad/sdk/reward/b/c/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/reward/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/c/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/c/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/c/a/a$1;->a:Lcom/kwad/sdk/reward/b/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/a$1;->a:Lcom/kwad/sdk/reward/b/c/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/c/a/a;->a(Lcom/kwad/sdk/reward/b/c/a/a;)Lcom/kwad/sdk/c/c;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/a$1;->a:Lcom/kwad/sdk/reward/b/c/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/c/a/a;->a(Lcom/kwad/sdk/reward/b/c/a/a;)Lcom/kwad/sdk/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/c/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/a$1;->a:Lcom/kwad/sdk/reward/b/c/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/reward/b/c/a/a;->a(Lcom/kwad/sdk/reward/b/c/a/a;Z)Z

    goto :goto_26

    :cond_1b
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/a$1;->a:Lcom/kwad/sdk/reward/b/c/a/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/reward/b/c/a/a;->a(Lcom/kwad/sdk/reward/b/c/a/a;Z)Z

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/a$1;->a:Lcom/kwad/sdk/reward/b/c/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/c/a/a;->b(Lcom/kwad/sdk/reward/b/c/a/a;)V

    :goto_26
    return-void
.end method
