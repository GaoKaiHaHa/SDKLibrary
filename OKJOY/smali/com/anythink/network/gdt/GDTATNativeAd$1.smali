.class final Lcom/anythink/network/gdt/GDTATNativeAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATNativeAd;->a(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/gdt/GDTATNativeAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATNativeAd;)V
    .registers 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClicked()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->notifyAdClicked()V

    .line 170
    return-void
.end method

.method public final onADError(Lcom/qq/e/comm/util/AdError;)V
    .registers 2

    .prologue
    .line 175
    return-void
.end method

.method public final onADExposed()V
    .registers 1

    .prologue
    .line 165
    return-void
.end method

.method public final onADStatusChanged()V
    .registers 1

    .prologue
    .line 180
    return-void
.end method
