.class final Lcom/mintegral/msdk/playercommon/d$13;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/playercommon/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mintegral/msdk/playercommon/d;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/playercommon/d;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 513
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/d$13;->b:Lcom/mintegral/msdk/playercommon/d;

    iput-object p2, p0, Lcom/mintegral/msdk/playercommon/d$13;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$13;->b:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->m(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 518
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$13;->b:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->m(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/d$13;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/playercommon/c;->OnBufferingStart(Ljava/lang/String;)V

    .line 521
    :cond_13
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$13;->b:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->n(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 522
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$13;->b:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->n(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/d$13;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/playercommon/c;->OnBufferingStart(Ljava/lang/String;)V

    .line 524
    :cond_26
    return-void
.end method
