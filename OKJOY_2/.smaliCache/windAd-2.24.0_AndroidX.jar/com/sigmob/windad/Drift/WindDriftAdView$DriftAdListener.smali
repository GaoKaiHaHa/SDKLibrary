.class Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/windad/Drift/WindDriftAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DriftAdListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/Drift/WindDriftAdView;


# direct methods
.method private constructor <init>(Lcom/sigmob/windad/Drift/WindDriftAdView;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sigmob/windad/Drift/WindDriftAdView;Lcom/sigmob/windad/Drift/WindDriftAdView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;-><init>(Lcom/sigmob/windad/Drift/WindDriftAdView;)V

    return-void
.end method


# virtual methods
.method public onDriftAdClose(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAdView;->e(Lcom/sigmob/windad/Drift/WindDriftAdView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$4;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$4;-><init>(Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDriftAdError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAdView;->d(Lcom/sigmob/windad/Drift/WindDriftAdView;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAdView;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAdView;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    new-instance v1, Lcom/sigmob/windad/WindAdAdapterError;

    invoke-direct {v1, p1, p2}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, p3}, Lcom/sigmob/windad/Drift/WindDriftAdListener;->onDriftAdError(Lcom/sigmob/windad/WindAdAdapterError;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public onDriftAdPresent(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/windad/Drift/WindDriftAdView;->a(Lcom/sigmob/windad/Drift/WindDriftAdView;Z)Z

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAdView;->a(Lcom/sigmob/windad/Drift/WindDriftAdView;)Lcom/sigmob/sdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/a/b;->c()V

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAdView;->e(Lcom/sigmob/windad/Drift/WindDriftAdView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$3;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$3;-><init>(Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDriftAdReceive(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAdView;->a(Lcom/sigmob/windad/Drift/WindDriftAdView;)Lcom/sigmob/sdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/a/b;->b()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/common/f/e;->e(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/e;->e(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-static {v1}, Lcom/sigmob/windad/Drift/WindDriftAdView;->c(Lcom/sigmob/windad/Drift/WindDriftAdView;)Lcom/sigmob/sdk/base/views/GifImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/GifImageView;->setMovie(Landroid/graphics/Movie;)V

    goto :goto_59

    :cond_48
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-static {v1}, Lcom/sigmob/windad/Drift/WindDriftAdView;->c(Lcom/sigmob/windad/Drift/WindDriftAdView;)Lcom/sigmob/sdk/base/views/GifImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_59
    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-virtual {v0, v2}, Lcom/sigmob/windad/Drift/WindDriftAdView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAdView;->d(Lcom/sigmob/windad/Drift/WindDriftAdView;)Z

    move-result v0

    if-nez v0, :cond_88

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAdView;->e(Lcom/sigmob/windad/Drift/WindDriftAdView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$1;-><init>(Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;Ljava/lang/String;)V

    goto :goto_85

    :cond_72
    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAdView;->d(Lcom/sigmob/windad/Drift/WindDriftAdView;)Z

    move-result v0

    if-nez v0, :cond_88

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAdView;->e(Lcom/sigmob/windad/Drift/WindDriftAdView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$2;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$2;-><init>(Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;Ljava/lang/String;)V

    :goto_85
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_88
    return-void
.end method