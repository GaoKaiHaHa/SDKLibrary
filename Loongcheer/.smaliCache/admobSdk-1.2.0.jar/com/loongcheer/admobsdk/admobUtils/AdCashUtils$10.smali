.class final Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$10;
.super Ljava/lang/Object;
.source "AdCashUtils.java"

# interfaces
.implements Lcom/google/android/gms/ads/OnPaidEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdValue(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .registers 2

    .line 1038
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$10;->val$interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaidEvent(Lcom/google/android/gms/ads/AdValue;)V
    .registers 8
    .param p1, "adValue"    # Lcom/google/android/gms/ads/AdValue;

    .line 1043
    const/4 v0, 0x1

    # setter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitial_error:Z
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1802(Z)Z

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getValueMicros()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$10;->val$interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/ResponseInfo;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "admob_intl_pingback"

    # invokes: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->appsflyerAdValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v1, v4, v3}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    return-void
.end method
