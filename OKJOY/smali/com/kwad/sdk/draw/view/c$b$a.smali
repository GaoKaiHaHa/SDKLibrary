.class Lcom/kwad/sdk/draw/view/c$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/download/g/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/draw/view/c$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/view/c$b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/view/c$b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/c$b$a;->a:Lcom/kwad/sdk/draw/view/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$b$a;->a:Lcom/kwad/sdk/draw/view/c$b;

    iget-object v0, v0, Lcom/kwad/sdk/draw/view/c$b;->a:Lcom/kwad/sdk/draw/view/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/draw/view/c;->a(Lcom/kwad/sdk/draw/view/c;I)V

    return-void
.end method