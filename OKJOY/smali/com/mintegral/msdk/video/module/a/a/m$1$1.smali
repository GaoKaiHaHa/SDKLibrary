.class final Lcom/mintegral/msdk/video/module/a/a/m$1$1;
.super Ljava/lang/Object;
.source "VideoViewDefaultListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/video/module/a/a/m$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/module/a/a/m$1;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/a/a/m$1;)V
    .registers 2

    .prologue
    .line 184
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/a/a/m$1$1;->a:Lcom/mintegral/msdk/video/module/a/a/m$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m$1$1;->a:Lcom/mintegral/msdk/video/module/a/a/m$1;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/a/a/m$1;->a:Lcom/mintegral/msdk/video/module/a/a/m;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/a/a/m;->a(Lcom/mintegral/msdk/video/module/a/a/m;)Lcom/mintegral/msdk/video/module/MintegralContainerView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->showVideoClickView(I)V

    .line 188
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m$1$1;->a:Lcom/mintegral/msdk/video/module/a/a/m$1;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/a/a/m$1;->a:Lcom/mintegral/msdk/video/module/a/a/m;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/a/a/m;->b(Lcom/mintegral/msdk/video/module/a/a/m;)Lcom/mintegral/msdk/video/module/MintegralVideoView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->soundOperate(II)V

    .line 189
    return-void
.end method
