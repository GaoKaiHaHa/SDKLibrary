.class final Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$ProtoAdapter_AntiFraudLogConfig;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_AntiFraudLogConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter<",
        "Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;
    .registers 8

    new-instance v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3b

    packed-switch v3, :pswitch_data_44

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    iget-object v3, v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;->events:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :pswitch_2f
    sget-object v3, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;->motion_config(Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;

    goto :goto_9

    :cond_3b
    invoke-virtual {p1, v1, v2}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_23
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$ProtoAdapter_AntiFraudLogConfig;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;)V
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->events:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$ProtoAdapter_AntiFraudLogConfig;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;)I
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->events:Ljava/util/List;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$ProtoAdapter_AntiFraudLogConfig;->encodedSize(Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->newBuilder()Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;

    move-result-object p1

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;->motion_config:Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;->motion_config:Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    iput-object v0, p1, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;->motion_config:Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    :cond_14
    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$ProtoAdapter_AntiFraudLogConfig;->redact(Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    move-result-object p1

    return-object p1
.end method
