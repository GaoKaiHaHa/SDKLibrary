.class public final Lcom/sigmob/wire/ProtoWriter;
.super Ljava/lang/Object;


# instance fields
.field private final sink:Lcom/sigmob/wire/okio/BufferedSink;


# direct methods
.method public constructor <init>(Lcom/sigmob/wire/okio/BufferedSink;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/wire/ProtoWriter;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    return-void
.end method

.method static decodeZigZag32(I)I
    .registers 3

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method static decodeZigZag64(J)J
    .registers 6

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method static encodeZigZag32(I)I
    .registers 3

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method static encodeZigZag64(J)J
    .registers 6

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method static int32Size(I)I
    .registers 2

    if-ltz p0, :cond_7

    invoke-static {p0}, Lcom/sigmob/wire/ProtoWriter;->varint32Size(I)I

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0xa

    goto :goto_6
.end method

.method private static makeTag(ILcom/sigmob/wire/FieldEncoding;)I
    .registers 4

    shl-int/lit8 v0, p0, 0x3

    iget v1, p1, Lcom/sigmob/wire/FieldEncoding;->value:I

    or-int/2addr v0, v1

    return v0
.end method

.method static tagSize(I)I
    .registers 2

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    invoke-static {p0, v0}, Lcom/sigmob/wire/ProtoWriter;->makeTag(ILcom/sigmob/wire/FieldEncoding;)I

    move-result v0

    invoke-static {v0}, Lcom/sigmob/wire/ProtoWriter;->varint32Size(I)I

    move-result v0

    return v0
.end method

.method static varint32Size(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 v0, 0x2

    goto :goto_5

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 v0, 0x3

    goto :goto_5

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_1a

    const/4 v0, 0x4

    goto :goto_5

    :cond_1a
    const/4 v0, 0x5

    goto :goto_5
.end method

.method static varint64Size(J)I
    .registers 6

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x2

    goto :goto_a

    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 v0, 0x3

    goto :goto_a

    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const/4 v0, 0x4

    goto :goto_a

    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/4 v0, 0x5

    goto :goto_a

    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 v0, 0x6

    goto :goto_a

    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    const/4 v0, 0x7

    goto :goto_a

    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    const/16 v0, 0x8

    goto :goto_a

    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5d

    const/16 v0, 0x9

    goto :goto_a

    :cond_5d
    const/16 v0, 0xa

    goto :goto_a
.end method


# virtual methods
.method public writeBytes(Lcom/sigmob/wire/okio/ByteString;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/ProtoWriter;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-interface {v0, p1}, Lcom/sigmob/wire/okio/BufferedSink;->write(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/okio/BufferedSink;

    return-void
.end method

.method public writeFixed32(I)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/ProtoWriter;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-interface {v0, p1}, Lcom/sigmob/wire/okio/BufferedSink;->writeIntLe(I)Lcom/sigmob/wire/okio/BufferedSink;

    return-void
.end method

.method public writeFixed64(J)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/wire/ProtoWriter;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-interface {v0, p1, p2}, Lcom/sigmob/wire/okio/BufferedSink;->writeLongLe(J)Lcom/sigmob/wire/okio/BufferedSink;

    return-void
.end method

.method writeSignedVarint32(I)V
    .registers 4

    if-ltz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoWriter;->writeVarint32(I)V

    :goto_5
    return-void

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/ProtoWriter;->writeVarint64(J)V

    goto :goto_5
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/ProtoWriter;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-interface {v0, p1}, Lcom/sigmob/wire/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/sigmob/wire/okio/BufferedSink;

    return-void
.end method

.method public writeTag(ILcom/sigmob/wire/FieldEncoding;)V
    .registers 4

    invoke-static {p1, p2}, Lcom/sigmob/wire/ProtoWriter;->makeTag(ILcom/sigmob/wire/FieldEncoding;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/ProtoWriter;->writeVarint32(I)V

    return-void
.end method

.method public writeVarint32(I)V
    .registers 4

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/wire/ProtoWriter;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-interface {v0, v1}, Lcom/sigmob/wire/okio/BufferedSink;->writeByte(I)Lcom/sigmob/wire/okio/BufferedSink;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_10
    iget-object v0, p0, Lcom/sigmob/wire/ProtoWriter;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-interface {v0, p1}, Lcom/sigmob/wire/okio/BufferedSink;->writeByte(I)Lcom/sigmob/wire/okio/BufferedSink;

    return-void
.end method

.method public writeVarint64(J)V
    .registers 8

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sigmob/wire/ProtoWriter;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-interface {v0, v1}, Lcom/sigmob/wire/okio/BufferedSink;->writeByte(I)Lcom/sigmob/wire/okio/BufferedSink;

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_16
    iget-object v0, p0, Lcom/sigmob/wire/ProtoWriter;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    long-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/sigmob/wire/okio/BufferedSink;->writeByte(I)Lcom/sigmob/wire/okio/BufferedSink;

    return-void
.end method
