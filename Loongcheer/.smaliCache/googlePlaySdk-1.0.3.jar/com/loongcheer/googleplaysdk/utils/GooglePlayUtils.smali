.class public Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"


# static fields
.field public static INAPP:Ljava/lang/String; = null

.field private static final ORDERERROR:I = 0x1

.field private static final SHOPP:I

.field public static SUBS:Ljava/lang/String;

.field public static SpKey:Ljava/lang/String;

.field public static billingClient:Lcom/android/billingclient/api/BillingClient;

.field public static playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

.field public static type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 47
    const-string v0, "inapp"

    sput-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->INAPP:Ljava/lang/String;

    .line 48
    const-string v0, "subs"

    sput-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->SUBS:Ljava/lang/String;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->type:Ljava/lang/String;

    .line 50
    const-string v0, "play_json"

    sput-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->SpKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 41
    invoke-static {}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getPlayVerify()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/loongcheer/googleplaysdk/callback/PlayInterface;
    .param p2, "x2"    # Landroid/app/Activity;
    .param p3, "x3"    # Ljava/lang/String;

    .line 41
    invoke-static {p0, p1, p2, p3}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->queryShopp(Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/util/List;Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;
    .param p2, "x2"    # Landroid/app/Activity;
    .param p3, "x3"    # Ljava/lang/String;

    .line 41
    invoke-static {p0, p1, p2, p3}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->querySkuDetailsing(Ljava/util/List;Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;)V
    .registers 1
    .param p0, "x0"    # Landroid/app/Activity;

    .line 41
    invoke-static {p0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->startConnection(Landroid/app/Activity;)V

    return-void
.end method

.method public static consumption(Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/ConsumptionInterface;)V
    .registers 5
    .param p0, "purchaseToken"    # Ljava/lang/String;
    .param p1, "consumptionInterface"    # Lcom/loongcheer/googleplaysdk/callback/ConsumptionInterface;

    .line 281
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    .line 284
    .local v0, "consumeParams":Lcom/android/billingclient/api/ConsumeParams;
    new-instance v1, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$7;

    invoke-direct {v1, p1}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$7;-><init>(Lcom/loongcheer/googleplaysdk/callback/ConsumptionInterface;)V

    .line 296
    .local v1, "listener":Lcom/android/billingclient/api/ConsumeResponseListener;
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 297
    return-void
.end method

.method public static getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 60
    sget-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_1c

    .line 61
    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$1;

    invoke-direct {v1, p0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    sput-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 94
    return-object v0

    .line 97
    :cond_1c
    return-object v0
.end method

.method private static getPlayVerify()Z
    .registers 4

    .line 437
    :try_start_0
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 438
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 440
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "play_verify"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 441
    .local v1, "play":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "google  \u9a8c\u8bc1\u72b6\u6001 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_34} :catch_35

    .line 443
    return v1

    .line 446
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "play":Z
    :catch_35
    move-exception v0

    .line 447
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 449
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x1

    return v0
.end method

.method public static googlePlay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Ljava/lang/String;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "shopid"    # Ljava/lang/String;
    .param p2, "playType"    # Ljava/lang/String;
    .param p3, "googleInfaces"    # Lcom/loongcheer/googleplaysdk/callback/PlayInterface;
    .param p4, "accountId"    # Ljava/lang/String;

    .line 111
    sput-object p3, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    .line 112
    sput-object p2, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->type:Ljava/lang/String;

    .line 114
    invoke-static {p0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    new-instance v1, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$2;

    invoke-direct {v1, p1, p0, p4}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$2;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 137
    return-void
.end method

.method private static handlePurchase(Lcom/android/billingclient/api/Purchase;)V
    .registers 4
    .param p0, "purchase"    # Lcom/android/billingclient/api/Purchase;

    .line 313
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 317
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 320
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    .line 322
    .local v0, "consumeParams":Lcom/android/billingclient/api/ConsumeParams;
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    new-instance v2, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$8;

    invoke-direct {v2, p0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$8;-><init>(Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 340
    .end local v0    # "consumeParams":Lcom/android/billingclient/api/ConsumeParams;
    :cond_2d
    return-void
.end method

.method public static handleacknowledgePurchase(Lcom/android/billingclient/api/Purchase;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;)V
    .registers 5
    .param p0, "purchase"    # Lcom/android/billingclient/api/Purchase;
    .param p1, "gooleplayintface"    # Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    .line 350
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    .line 354
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 358
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 359
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v0

    .line 362
    .local v0, "acknowledgePurchaseParams":Lcom/android/billingclient/api/AcknowledgePurchaseParams;
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    new-instance v2, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$9;

    invoke-direct {v2, p1, p0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$9;-><init>(Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 374
    .end local v0    # "acknowledgePurchaseParams":Lcom/android/billingclient/api/AcknowledgePurchaseParams;
    goto :goto_35

    .line 375
    :cond_2e
    const/16 v0, 0x12

    const-string v1, "\u5df2\u9a8c\u8bc1\u8ba2\u5355"

    invoke-interface {p1, v0, v1}, Lcom/loongcheer/googleplaysdk/callback/PlayInterface;->fail(ILjava/lang/String;)V

    .line 379
    :cond_35
    :goto_35
    return-void
.end method

.method public static onDeta()V
    .registers 1

    .line 304
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    .line 305
    return-void
.end method

.method public static queryPurchasesList(Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;)V
    .registers 3
    .param p0, "purchasesResultInterface"    # Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;

    .line 390
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    new-instance v1, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$10;

    invoke-direct {v1, p0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$10;-><init>(Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 423
    return-void
.end method

.method private static queryShopp(Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 9
    .param p0, "shoppid"    # Ljava/lang/String;
    .param p1, "playInterface"    # Lcom/loongcheer/googleplaysdk/callback/PlayInterface;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "accountId"    # Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v0, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    .line 242
    .local v1, "params":Lcom/android/billingclient/api/SkuDetailsParams$Builder;
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v2

    sget-object v3, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 243
    sget-object v2, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v3

    new-instance v4, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$6;

    invoke-direct {v4, p1, p3, p2}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$6;-><init>(Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 269
    return-void
.end method

.method public static querySkuDetails(Ljava/util/List;Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .param p1, "querySkuDetailsInterface"    # Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 148
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    new-instance v1, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$3;-><init>(Ljava/util/List;Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 172
    return-void
.end method

.method private static querySkuDetailsing(Ljava/util/List;Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 8
    .param p1, "querySkuDetailsInterface"    # Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "types"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 186
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    .line 188
    .local v0, "params":Lcom/android/billingclient/api/SkuDetailsParams$Builder;
    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 189
    sget-object v1, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v2

    new-instance v3, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$4;

    invoke-direct {v3, p1}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$4;-><init>(Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 204
    return-void
.end method

.method private static startConnection(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 214
    invoke-static {p0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    new-instance v1, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$5;

    invoke-direct {v1}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 227
    return-void
.end method