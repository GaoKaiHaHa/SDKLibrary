.class final Lcom/mintegral/msdk/video/js/bridge/RewardJs$3;
.super Ljava/lang/Object;
.source "RewardJs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/video/js/bridge/RewardJs;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mintegral/msdk/video/js/bridge/RewardJs;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/js/bridge/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mintegral/msdk/video/js/bridge/RewardJs$3;->c:Lcom/mintegral/msdk/video/js/bridge/RewardJs;

    iput-object p2, p0, Lcom/mintegral/msdk/video/js/bridge/RewardJs$3;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/mintegral/msdk/video/js/bridge/RewardJs$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/RewardJs$3;->c:Lcom/mintegral/msdk/video/js/bridge/RewardJs;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/RewardJs$3;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/bridge/RewardJs$3;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/video/js/bridge/RewardJs;->c(Lcom/mintegral/msdk/video/js/bridge/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    return-void
.end method