.class public final enum Lcom/umeng/analytics/MobclickAgent$EScenarioType;
.super Ljava/lang/Enum;
.source "MobclickAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/MobclickAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EScenarioType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/MobclickAgent$EScenarioType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum E_UM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

.field public static final enum E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

.field private static final synthetic b:[Lcom/umeng/analytics/MobclickAgent$EScenarioType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 409
    new-instance v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    const-string v1, "E_UM_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    .line 411
    new-instance v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    const-string v3, "E_UM_GAME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    .line 407
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->b:[Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 419
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 420
    iput p3, p0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->a:I

    .line 421
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/MobclickAgent$EScenarioType;
    .registers 2

    .line 407
    const-class v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/MobclickAgent$EScenarioType;
    .registers 1

    .line 407
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->b:[Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v0}, [Lcom/umeng/analytics/MobclickAgent$EScenarioType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    return-object v0
.end method


# virtual methods
.method public toValue()I
    .registers 2

    .line 424
    iget v0, p0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->a:I

    return v0
.end method
