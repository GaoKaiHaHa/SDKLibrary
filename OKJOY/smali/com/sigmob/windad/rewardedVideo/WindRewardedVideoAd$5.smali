.class Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdPlayEnd(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$5;->b:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    iput-object p2, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$5;->b:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    invoke-static {v0}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;)Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdPlayEnd |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$5;->b:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    invoke-static {v0}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;)Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$5;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;->onVideoAdPlayEnd(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method