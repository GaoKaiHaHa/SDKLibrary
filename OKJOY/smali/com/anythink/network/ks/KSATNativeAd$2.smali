.class final Lcom/anythink/network/ks/KSATNativeAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/nativead/KsAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATNativeAd;->prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ks/KSATNativeAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATNativeAd;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/anythink/network/ks/KSATNativeAd$2;->a:Lcom/anythink/network/ks/KSATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadFinished()V
    .registers 1

    .prologue
    .line 106
    return-void
.end method

.method public final onIdle()V
    .registers 1

    .prologue
    .line 96
    return-void
.end method

.method public final onInstalled()V
    .registers 1

    .prologue
    .line 111
    return-void
.end method

.method public final onProgressUpdate(I)V
    .registers 2

    .prologue
    .line 101
    return-void
.end method
