.class Lcom/tds/common/net/PlatformXUA$Holder;
.super Ljava/lang/Object;
.source "PlatformXUA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/PlatformXUA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/tds/common/net/PlatformXUA;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 9
    new-instance v0, Lcom/tds/common/net/PlatformXUA;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tds/common/net/PlatformXUA;-><init>(Lcom/tds/common/net/PlatformXUA$1;)V

    sput-object v0, Lcom/tds/common/net/PlatformXUA$Holder;->INSTANCE:Lcom/tds/common/net/PlatformXUA;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tds/common/net/PlatformXUA;
    .registers 1

    .line 7
    sget-object v0, Lcom/tds/common/net/PlatformXUA$Holder;->INSTANCE:Lcom/tds/common/net/PlatformXUA;

    return-object v0
.end method
