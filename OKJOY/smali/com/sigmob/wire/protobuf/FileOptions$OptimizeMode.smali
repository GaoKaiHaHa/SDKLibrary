.class public final enum Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/sigmob/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;",
        ">;",
        "Lcom/sigmob/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CODE_SIZE:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

.field public static final enum LITE_RUNTIME:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

.field public static final enum SPEED:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    const-string v1, "SPEED"

    invoke-direct {v0, v1, v4, v2}, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->SPEED:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    new-instance v0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    const-string v1, "CODE_SIZE"

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->CODE_SIZE:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    new-instance v0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    const-string v1, "LITE_RUNTIME"

    invoke-direct {v0, v1, v3, v5}, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->LITE_RUNTIME:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    new-array v0, v5, [Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    sget-object v1, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->SPEED:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->CODE_SIZE:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->LITE_RUNTIME:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->$VALUES:[Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    new-instance v0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode$ProtoAdapter_OptimizeMode;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode$ProtoAdapter_OptimizeMode;-><init>()V

    sput-object v0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;
    .registers 2

    packed-switch p0, :pswitch_data_e

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    sget-object v0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->SPEED:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    goto :goto_4

    :pswitch_8
    sget-object v0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->CODE_SIZE:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    goto :goto_4

    :pswitch_b
    sget-object v0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->LITE_RUNTIME:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    goto :goto_4

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;
    .registers 2

    const-class v0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;
    .registers 1

    sget-object v0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->$VALUES:[Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    invoke-virtual {v0}, [Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->value:I

    return v0
.end method
