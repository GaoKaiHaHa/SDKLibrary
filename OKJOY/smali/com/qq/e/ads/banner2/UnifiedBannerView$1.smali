.class Lcom/qq/e/ads/banner2/UnifiedBannerView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/banner2/UnifiedBannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:Lcom/qq/e/ads/banner2/UnifiedBannerView;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/banner2/UnifiedBannerView;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;Ljava/util/Map;)V
    .registers 7
    .param p1, "this$0"    # Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iput-object p2, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->d:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    iput-object p6, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->e:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qq/e/comm/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    :try_start_e
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;

    invoke-direct {v2, p0, v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;-><init>(Lcom/qq/e/ads/banner2/UnifiedBannerView$1;Lcom/qq/e/comm/pi/POFactory;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_2b} :catch_2c

    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    const-string v1, "Exception while init UnifiedBannerView plugin"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b

    :cond_33
    const-string v0, "Fail to init ADManager"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_2b
.end method
