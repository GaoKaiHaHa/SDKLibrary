.class public final enum Lcom/sigmob/wire/protobuf/FieldOptions$CType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/sigmob/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/wire/protobuf/FieldOptions$CType;",
        ">;",
        "Lcom/sigmob/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sigmob/wire/protobuf/FieldOptions$CType;

.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/wire/protobuf/FieldOptions$CType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CORD:Lcom/sigmob/wire/protobuf/FieldOptions$CType;

.field public static final enum STRING:Lcom/sigmob/wire/protobuf/FieldOptions$CType;

.field public static final enum STRING_PIECE:Lcom/sigmob/wire/protobuf/FieldOptions$CType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v2, v2}, Lcom/sigmob/wire/protobuf/FieldOptions$CType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->STRING:Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    const-string v1, "CORD"

    invoke-direct {v0, v1, v3, v3}, Lcom/sigmob/wire/protobuf/FieldOptions$CType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->CORD:Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    const-string v1, "STRING_PIECE"

    invoke-direct {v0, v1, v4, v4}, Lcom/sigmob/wire/protobuf/FieldOptions$CType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->STRING_PIECE:Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->STRING:Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->CORD:Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->STRING_PIECE:Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->$VALUES:[Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType$ProtoAdapter_CType;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/FieldOptions$CType$ProtoAdapter_CType;-><init>()V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

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

    iput p3, p0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/sigmob/wire/protobuf/FieldOptions$CType;
    .registers 2

    packed-switch p0, :pswitch_data_e

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->STRING:Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    goto :goto_4

    :pswitch_8
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->CORD:Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    goto :goto_4

    :pswitch_b
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->STRING_PIECE:Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    goto :goto_4

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FieldOptions$CType;
    .registers 2

    const-class v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/wire/protobuf/FieldOptions$CType;
    .registers 1

    sget-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->$VALUES:[Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    invoke-virtual {v0}, [Lcom/sigmob/wire/protobuf/FieldOptions$CType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->value:I

    return v0
.end method