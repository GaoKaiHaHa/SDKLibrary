.class public Lcom/ssjj/fnsdk/platform/FNConfig;
.super Ljava/lang/Object;


# static fields
.field public static fn_gameId:Ljava/lang/String;

.field public static fn_platformId:Ljava/lang/String;

.field public static fn_platformTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0"

    sput-object v0, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_gameId:Ljava/lang/String;

    sput-object v0, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    const-string v0, "demo"

    sput-object v0, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
