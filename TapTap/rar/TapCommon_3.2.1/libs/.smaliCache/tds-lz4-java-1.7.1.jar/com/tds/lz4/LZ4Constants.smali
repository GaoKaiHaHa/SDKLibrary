.class final enum Lcom/tds/lz4/LZ4Constants;
.super Ljava/lang/Enum;
.source "LZ4Constants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/lz4/LZ4Constants;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/lz4/LZ4Constants;

.field static final COPY_LENGTH:I = 0x8

.field static final DEFAULT_COMPRESSION_LEVEL:I = 0x9

.field static final HASH_LOG:I = 0xc

.field static final HASH_LOG_64K:I = 0xd

.field static final HASH_LOG_HC:I = 0xf

.field static final HASH_TABLE_SIZE:I = 0x1000

.field static final HASH_TABLE_SIZE_64K:I = 0x2000

.field static final HASH_TABLE_SIZE_HC:I = 0x8000

.field static final LAST_LITERALS:I = 0x5

.field static final LZ4_64K_LIMIT:I = 0x1000b

.field static final MAX_COMPRESSION_LEVEL:I = 0x11

.field static final MAX_DISTANCE:I = 0x10000

.field static final MEMORY_USAGE:I = 0xe

.field static final MF_LIMIT:I = 0xc

.field static final MIN_LENGTH:I = 0xd

.field static final MIN_MATCH:I = 0x4

.field static final ML_BITS:I = 0x4

.field static final ML_MASK:I = 0xf

.field static final NOT_COMPRESSIBLE_DETECTION_LEVEL:I = 0x6

.field static final OPTIMAL_ML:I = 0x12

.field static final RUN_BITS:I = 0x4

.field static final RUN_MASK:I = 0xf

.field static final SKIP_STRENGTH:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tds/lz4/LZ4Constants;

    sput-object v0, Lcom/tds/lz4/LZ4Constants;->$VALUES:[Lcom/tds/lz4/LZ4Constants;

    .line 32
    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/tds/lz4/LZ4Constants;->SKIP_STRENGTH:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/lz4/LZ4Constants;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/tds/lz4/LZ4Constants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/lz4/LZ4Constants;

    return-object v0
.end method

.method public static values()[Lcom/tds/lz4/LZ4Constants;
    .registers 1

    .line 18
    sget-object v0, Lcom/tds/lz4/LZ4Constants;->$VALUES:[Lcom/tds/lz4/LZ4Constants;

    invoke-virtual {v0}, [Lcom/tds/lz4/LZ4Constants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/lz4/LZ4Constants;

    return-object v0
.end method
