.class Lcom/sigmob/volley/toolbox/NetworkImageView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/toolbox/NetworkImageView$1;->a(Lcom/sigmob/volley/toolbox/s;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/volley/toolbox/s;

.field final synthetic b:Lcom/sigmob/volley/toolbox/NetworkImageView$1;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/toolbox/NetworkImageView$1;Lcom/sigmob/volley/toolbox/s;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView$1;

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1$1;->a:Lcom/sigmob/volley/toolbox/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView$1;

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1$1;->a:Lcom/sigmob/volley/toolbox/s;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->a(Lcom/sigmob/volley/toolbox/s;Z)V

    return-void
.end method