.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;
.super Ljava/lang/Object;
.source "TTNativeExpressAdStub.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;
    }
.end annotation


# instance fields
.field public m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .line 76
    return-void
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .registers 2

    .line 90
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExpressAdView()Landroid/view/View;
    .registers 2

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilterWords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageMode()I
    .registers 2

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getInteractionType()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonalizationPrompt()Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;
    .registers 2

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoModel()Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 2

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public render()V
    .registers 1

    .line 71
    return-void
.end method

.method public setCanInterruptVideoPlay(Z)V
    .registers 2

    .line 111
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 3

    .line 81
    return-void
.end method

.method public setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .registers 2

    .line 86
    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 2

    .line 61
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V
    .registers 2

    .line 56
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .registers 2

    .line 51
    return-void
.end method

.method public setSlideIntervalTime(I)V
    .registers 2

    .line 101
    return-void
.end method

.method public setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;)V
    .registers 2

    .line 106
    return-void
.end method

.method public showInteractionExpressAd(Landroid/app/Activity;)V
    .registers 2

    .line 96
    return-void
.end method
