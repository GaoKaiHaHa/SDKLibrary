.class public final enum Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/lottie/model/content/ShapeStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineJoinType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

.field public static final enum Bevel:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

.field public static final enum Miter:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

.field public static final enum Round:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    const-string v1, "Miter"

    invoke-direct {v0, v1, v2}, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->Miter:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    new-instance v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    const-string v1, "Round"

    invoke-direct {v0, v1, v3}, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->Round:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    new-instance v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    const-string v1, "Bevel"

    invoke-direct {v0, v1, v4}, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->Bevel:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    sget-object v1, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->Miter:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->Round:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->Bevel:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->$VALUES:[Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;
    .registers 2

    const-class v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    return-object v0
.end method

.method public static values()[Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;
    .registers 1

    sget-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->$VALUES:[Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    invoke-virtual {v0}, [Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    return-object v0
.end method


# virtual methods
.method public toPaintJoin()Landroid/graphics/Paint$Join;
    .registers 3

    sget-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    const/4 v0, 0x0

    :goto_12
    return-object v0

    :cond_13
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_12

    :cond_16
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_12

    :cond_19
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_12
.end method
