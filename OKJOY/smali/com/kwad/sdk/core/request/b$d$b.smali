.class Lcom/kwad/sdk/core/request/b$d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/request/b$d;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/kwad/sdk/core/request/b$d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/request/b$d;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/request/b$d$b;->b:Lcom/kwad/sdk/core/request/b$d;

    iput-object p2, p0, Lcom/kwad/sdk/core/request/b$d$b;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/request/b$d$b;->b:Lcom/kwad/sdk/core/request/b$d;

    iget-object v0, v0, Lcom/kwad/sdk/core/request/b$d;->a:Lcom/kwad/sdk/export/i/IAdRequestManager$FeedAdListener;

    iget-object v1, p0, Lcom/kwad/sdk/core/request/b$d$b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/export/i/IAdRequestManager$FeedAdListener;->onFeedAdLoad(Ljava/util/List;)V

    return-void
.end method