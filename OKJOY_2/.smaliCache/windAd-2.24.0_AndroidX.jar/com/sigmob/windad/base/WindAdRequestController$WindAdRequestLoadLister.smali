.class public interface abstract Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/windad/base/WindAdRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindAdRequestLoadLister"
.end annotation


# virtual methods
.method public abstract onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
.end method

.method public abstract onVideoAdLoadStart(Ljava/lang/String;)V
.end method

.method public abstract onVideoAdLoadSuccess(Ljava/lang/String;)V
.end method

.method public abstract onVideoAdPreLoadFail(Ljava/lang/String;)V
.end method

.method public abstract onVideoAdPreLoadSuccess(Ljava/lang/String;)V
.end method