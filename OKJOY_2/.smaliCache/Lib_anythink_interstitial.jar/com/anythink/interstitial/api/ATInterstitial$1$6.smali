.class final Lcom/anythink/interstitial/api/ATInterstitial$1$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/interstitial/api/ATInterstitial$1;->onInterstitialAdVideoError(Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/interstitial/api/ATInterstitial$1;

.field final synthetic val$errorCode:Lcom/anythink/core/api/AdError;


# direct methods
.method constructor <init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .line 109
    iput-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$6;->this$1:Lcom/anythink/interstitial/api/ATInterstitial$1;

    iput-object p2, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$6;->val$errorCode:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$6;->this$1:Lcom/anythink/interstitial/api/ATInterstitial$1;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterstitialListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_13

    .line 113
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$6;->this$1:Lcom/anythink/interstitial/api/ATInterstitial$1;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterstitialListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$6;->val$errorCode:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdVideoError(Lcom/anythink/core/api/AdError;)V

    .line 115
    :cond_13
    return-void
.end method
