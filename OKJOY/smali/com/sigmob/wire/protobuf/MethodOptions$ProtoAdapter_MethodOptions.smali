.class final Lcom/sigmob/wire/protobuf/MethodOptions$ProtoAdapter_MethodOptions;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter",
        "<",
        "Lcom/sigmob/wire/protobuf/MethodOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/wire/protobuf/MethodOptions;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/MethodOptions;
    .registers 8

    new-instance v1, Lcom/sigmob/wire/protobuf/MethodOptions$Builder;

    invoke-direct {v1}, Lcom/sigmob/wire/protobuf/MethodOptions$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3b

    sparse-switch v0, :sswitch_data_44

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/sigmob/wire/protobuf/MethodOptions$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :sswitch_23
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/protobuf/MethodOptions$Builder;->deprecated(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/MethodOptions$Builder;

    goto :goto_9

    :sswitch_2f
    iget-object v0, v1, Lcom/sigmob/wire/protobuf/MethodOptions$Builder;->uninterpreted_option:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/protobuf/UninterpretedOption;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_3b
    invoke-virtual {p1, v2, v3}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v1}, Lcom/sigmob/wire/protobuf/MethodOptions$Builder;->build()Lcom/sigmob/wire/protobuf/MethodOptions;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_44
    .sparse-switch
        0x21 -> :sswitch_23
        0x3e7 -> :sswitch_2f
    .end sparse-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/MethodOptions$ProtoAdapter_MethodOptions;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/MethodOptions;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x21

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/MethodOptions;->deprecated:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0x3e7

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/MethodOptions;->uninterpreted_option:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/wire/protobuf/MethodOptions;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/wire/protobuf/MethodOptions;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/protobuf/MethodOptions$ProtoAdapter_MethodOptions;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/MethodOptions;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/wire/protobuf/MethodOptions;)I
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x21

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/MethodOptions;->deprecated:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    const/16 v2, 0x3e7

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/MethodOptions;->uninterpreted_option:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/MethodOptions;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/sigmob/wire/protobuf/MethodOptions;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/MethodOptions$ProtoAdapter_MethodOptions;->encodedSize(Lcom/sigmob/wire/protobuf/MethodOptions;)I

    move-result v0

    return v0
.end method

.method public redact(Lcom/sigmob/wire/protobuf/MethodOptions;)Lcom/sigmob/wire/protobuf/MethodOptions;
    .registers 5

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/MethodOptions;->newBuilder()Lcom/sigmob/wire/protobuf/MethodOptions$Builder;

    move-result-object v0

    iget-object v1, v0, Lcom/sigmob/wire/protobuf/MethodOptions$Builder;->uninterpreted_option:Ljava/util/List;

    sget-object v2, Lcom/sigmob/wire/protobuf/UninterpretedOption;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/sigmob/wire/ProtoAdapter;)V

    invoke-virtual {v0}, Lcom/sigmob/wire/protobuf/MethodOptions$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {v0}, Lcom/sigmob/wire/protobuf/MethodOptions$Builder;->build()Lcom/sigmob/wire/protobuf/MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/sigmob/wire/protobuf/MethodOptions;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/MethodOptions$ProtoAdapter_MethodOptions;->redact(Lcom/sigmob/wire/protobuf/MethodOptions;)Lcom/sigmob/wire/protobuf/MethodOptions;

    move-result-object v0

    return-object v0
.end method