.class Lcom/sigmob/windad/base/WindAdRequestController$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;

.field final synthetic b:Lcom/sigmob/windad/base/WindAdRequestController;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$13;->b:Lcom/sigmob/windad/base/WindAdRequestController;

    iput-object p2, p0, Lcom/sigmob/windad/base/WindAdRequestController$13;->a:Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$13;->b:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->d(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$13;->b:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->d(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$13;->a:Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$13;->b:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v2}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;->onVideoAdClosed(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;Ljava/lang/String;)V

    :cond_19
    return-void
.end method