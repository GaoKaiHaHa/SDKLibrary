.class public final enum Lcom/sigmob/wire/FieldEncoding;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/wire/FieldEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sigmob/wire/FieldEncoding;

.field public static final enum FIXED32:Lcom/sigmob/wire/FieldEncoding;

.field public static final enum FIXED64:Lcom/sigmob/wire/FieldEncoding;

.field public static final enum LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

.field public static final enum VARINT:Lcom/sigmob/wire/FieldEncoding;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sigmob/wire/FieldEncoding;

    const-string v1, "VARINT"

    invoke-direct {v0, v1, v3, v3}, Lcom/sigmob/wire/FieldEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    new-instance v0, Lcom/sigmob/wire/FieldEncoding;

    const-string v1, "FIXED64"

    invoke-direct {v0, v1, v4, v4}, Lcom/sigmob/wire/FieldEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/FieldEncoding;->FIXED64:Lcom/sigmob/wire/FieldEncoding;

    new-instance v0, Lcom/sigmob/wire/FieldEncoding;

    const-string v1, "LENGTH_DELIMITED"

    invoke-direct {v0, v1, v5, v5}, Lcom/sigmob/wire/FieldEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    new-instance v0, Lcom/sigmob/wire/FieldEncoding;

    const-string v1, "FIXED32"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/sigmob/wire/FieldEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/FieldEncoding;->FIXED32:Lcom/sigmob/wire/FieldEncoding;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sigmob/wire/FieldEncoding;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->FIXED64:Lcom/sigmob/wire/FieldEncoding;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->FIXED32:Lcom/sigmob/wire/FieldEncoding;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sigmob/wire/FieldEncoding;->$VALUES:[Lcom/sigmob/wire/FieldEncoding;

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

    iput p3, p0, Lcom/sigmob/wire/FieldEncoding;->value:I

    return-void
.end method

.method static get(I)Lcom/sigmob/wire/FieldEncoding;
    .registers 4

    packed-switch p0, :pswitch_data_28

    :pswitch_3
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected FieldEncoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    :goto_1e
    return-object v0

    :pswitch_1f
    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->FIXED64:Lcom/sigmob/wire/FieldEncoding;

    goto :goto_1e

    :pswitch_22
    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    goto :goto_1e

    :pswitch_25
    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->FIXED32:Lcom/sigmob/wire/FieldEncoding;

    goto :goto_1e

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_3
        :pswitch_3
        :pswitch_25
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/wire/FieldEncoding;
    .registers 2

    const-class v0, Lcom/sigmob/wire/FieldEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/FieldEncoding;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/wire/FieldEncoding;
    .registers 1

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->$VALUES:[Lcom/sigmob/wire/FieldEncoding;

    invoke-virtual {v0}, [Lcom/sigmob/wire/FieldEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/wire/FieldEncoding;

    return-object v0
.end method


# virtual methods
.method public rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sigmob/wire/ProtoAdapter",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/wire/FieldEncoding$1;->$SwitchMap$com$sigmob$wire$FieldEncoding:[I

    invoke-virtual {p0}, Lcom/sigmob/wire/FieldEncoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_11
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    :goto_13
    return-object v0

    :pswitch_14
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->FIXED32:Lcom/sigmob/wire/ProtoAdapter;

    goto :goto_13

    :pswitch_17
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->FIXED64:Lcom/sigmob/wire/ProtoAdapter;

    goto :goto_13

    :pswitch_1a
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BYTES:Lcom/sigmob/wire/ProtoAdapter;

    goto :goto_13

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method
