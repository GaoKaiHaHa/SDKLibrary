.class Lcom/sigmob/volley/toolbox/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/sigmob/volley/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sigmob/volley/o$b<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sigmob/volley/toolbox/k;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/toolbox/k;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/k$1;->b:Lcom/sigmob/volley/toolbox/k;

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/k$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k$1;->b:Lcom/sigmob/volley/toolbox/k;

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/k$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sigmob/volley/toolbox/k$1;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method