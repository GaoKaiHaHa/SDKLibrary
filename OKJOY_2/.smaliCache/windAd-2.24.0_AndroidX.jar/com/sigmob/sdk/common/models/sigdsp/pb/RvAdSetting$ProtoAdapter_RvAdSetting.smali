.class final Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$ProtoAdapter_RvAdSetting;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_RvAdSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;
    .registers 8

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b7

    packed-switch v3, :pswitch_data_c0

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->end_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;

    goto :goto_9

    :pswitch_2f
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->invisible_ad_label(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;

    goto :goto_9

    :pswitch_3b
    sget-object v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->click_setting(Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;)Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;

    goto :goto_9

    :pswitch_47
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->full_click_on_video(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;

    goto :goto_9

    :pswitch_53
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->enable_exit_on_video_close(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;

    goto :goto_9

    :pswitch_5f
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->skip_seconds(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;

    goto :goto_9

    :pswitch_6b
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->skip_percent(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;

    goto :goto_9

    :pswitch_77
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->mute_postion(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;

    goto :goto_9

    :pswitch_83
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->endcard_close_position(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;

    goto/16 :goto_9

    :pswitch_90
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->video_close_position(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;

    goto/16 :goto_9

    :pswitch_9d
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->FLOAT:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->finished(Ljava/lang/Float;)Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;

    goto/16 :goto_9

    :pswitch_aa
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->if_mute(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;

    goto/16 :goto_9

    :cond_b7
    invoke-virtual {p1, v1, v2}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_9d
        :pswitch_90
        :pswitch_83
        :pswitch_77
        :pswitch_6b
        :pswitch_5f
        :pswitch_53
        :pswitch_47
        :pswitch_3b
        :pswitch_2f
        :pswitch_23
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$ProtoAdapter_RvAdSetting;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->if_mute:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->FLOAT:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->finished:Ljava/lang/Float;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->video_close_position:Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->endcard_close_position:Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->mute_postion:Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->skip_percent:Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->enable_exit_on_video_close:Ljava/lang/Boolean;

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->full_click_on_video:Ljava/lang/Boolean;

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->click_setting:Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->invisible_ad_label:Ljava/lang/Boolean;

    const/16 v2, 0xb

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->end_time:Ljava/lang/Integer;

    const/16 v2, 0xc

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$ProtoAdapter_RvAdSetting;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;)I
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->if_mute:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->FLOAT:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->finished:Ljava/lang/Float;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->video_close_position:Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->endcard_close_position:Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->mute_postion:Ljava/lang/Integer;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->skip_percent:Ljava/lang/Integer;

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->enable_exit_on_video_close:Ljava/lang/Boolean;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->full_click_on_video:Ljava/lang/Boolean;

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->click_setting:Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->invisible_ad_label:Ljava/lang/Boolean;

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->end_time:Ljava/lang/Integer;

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$ProtoAdapter_RvAdSetting;->encodedSize(Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;)Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->newBuilder()Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;

    move-result-object p1

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->click_setting:Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->click_setting:Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;

    iput-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->click_setting:Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;

    :cond_14
    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting$ProtoAdapter_RvAdSetting;->redact(Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;)Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    move-result-object p1

    return-object p1
.end method