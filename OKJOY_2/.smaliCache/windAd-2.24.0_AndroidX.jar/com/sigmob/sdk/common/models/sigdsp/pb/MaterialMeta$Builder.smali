.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public click_type:Ljava/lang/Integer;

.field public companion:Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;

.field public creative_type:Ljava/lang/Integer;

.field public deeplink_url:Ljava/lang/String;

.field public disable_auto_deeplink:Ljava/lang/Boolean;

.field public enable_collapse_tool_bar:Ljava/lang/Boolean;

.field public endcard_md5:Ljava/lang/String;

.field public endcard_url:Ljava/lang/String;

.field public has_companion_endcard:Ljava/lang/Boolean;

.field public html_snippet:Lcom/sigmob/wire/okio/ByteString;

.field public html_url:Ljava/lang/String;

.field public image_md5:Ljava/lang/String;

.field public image_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

.field public image_src:Ljava/lang/String;

.field public image_type:Ljava/lang/Integer;

.field public interaction_type:Ljava/lang/Integer;

.field public landing_page:Ljava/lang/String;

.field public open_market_mode:Ljava/lang/Integer;

.field public play_mode:Ljava/lang/Integer;

.field public sub_interaction_type:Ljava/lang/Integer;

.field public template_type:Ljava/lang/Integer;

.field public video_duration:Ljava/lang/Integer;

.field public video_md5:Ljava/lang/String;

.field public video_reciprocal_millisecond:Ljava/lang/Integer;

.field public video_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

.field public video_url:Ljava/lang/String;

.field public web_event_handle:Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->DEFAULT_CREATIVE_TYPE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->creative_type:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->DEFAULT_INTERACTION_TYPE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->interaction_type:Ljava/lang/Integer;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->landing_page:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->video_url:Ljava/lang/String;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->DEFAULT_VIDEO_DURATION:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->video_duration:Ljava/lang/Integer;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->DEFAULT_HTML_SNIPPET:Lcom/sigmob/wire/okio/ByteString;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->endcard_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->video_md5:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->endcard_md5:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->deeplink_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->image_src:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->image_md5:Ljava/lang/String;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->DEFAULT_IMAGE_TYPE:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->image_type:Ljava/lang/Integer;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->DEFAULT_CLICK_TYPE:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->click_type:Ljava/lang/Integer;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->DEFAULT_HAS_COMPANION_ENDCARD:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->has_companion_endcard:Ljava/lang/Boolean;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->DEFAULT_TEMPLATE_TYPE:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->template_type:Ljava/lang/Integer;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->DEFAULT_VIDEO_RECIPROCAL_MILLISECOND:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->video_reciprocal_millisecond:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->html_url:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->DEFAULT_ENABLE_COLLAPSE_TOOL_BAR:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->DEFAULT_OPEN_MARKET_MODE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->open_market_mode:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->DEFAULT_PLAY_MODE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->play_mode:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->DEFAULT_SUB_INTERACTION_TYPE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->sub_interaction_type:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->DEFAULT_DISABLE_AUTO_DEEPLINK:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->disable_auto_deeplink:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;
    .registers 33

    move-object/from16 v0, p0

    new-instance v30, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-object/from16 v1, v30

    iget-object v2, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->creative_type:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->interaction_type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->landing_page:Ljava/lang/String;

    iget-object v5, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->video_url:Ljava/lang/String;

    iget-object v6, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->video_duration:Ljava/lang/Integer;

    iget-object v7, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->video_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    iget-object v8, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    iget-object v9, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->endcard_url:Ljava/lang/String;

    iget-object v10, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->video_md5:Ljava/lang/String;

    iget-object v11, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->endcard_md5:Ljava/lang/String;

    iget-object v12, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->deeplink_url:Ljava/lang/String;

    iget-object v13, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->image_src:Ljava/lang/String;

    iget-object v14, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->image_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    iget-object v15, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->image_md5:Ljava/lang/String;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->image_type:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->click_type:Ljava/lang/Integer;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->has_companion_endcard:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->companion:Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->web_event_handle:Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->template_type:Ljava/lang/Integer;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->video_reciprocal_millisecond:Ljava/lang/Integer;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->html_url:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->open_market_mode:Ljava/lang/Integer;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->play_mode:Ljava/lang/Integer;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->sub_interaction_type:Ljava/lang/Integer;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->disable_auto_deeplink:Ljava/lang/Boolean;

    move-object/from16 v28, v1

    invoke-super/range {p0 .. p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v29

    move-object/from16 v1, v31

    invoke-direct/range {v1 .. v29}, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;Lcom/sigmob/wire/okio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v30
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    return-object v0
.end method

.method public click_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->click_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public companion(Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->companion:Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;

    return-object p0
.end method

.method public creative_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->creative_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public deeplink_url(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->deeplink_url:Ljava/lang/String;

    return-object p0
.end method

.method public disable_auto_deeplink(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->disable_auto_deeplink:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enable_collapse_tool_bar(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    return-object p0
.end method

.method public endcard_md5(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->endcard_md5:Ljava/lang/String;

    return-object p0
.end method

.method public endcard_url(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->endcard_url:Ljava/lang/String;

    return-object p0
.end method

.method public has_companion_endcard(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->has_companion_endcard:Ljava/lang/Boolean;

    return-object p0
.end method

.method public html_snippet(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    return-object p0
.end method

.method public html_url(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->html_url:Ljava/lang/String;

    return-object p0
.end method

.method public image_md5(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->image_md5:Ljava/lang/String;

    return-object p0
.end method

.method public image_size(Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->image_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    return-object p0
.end method

.method public image_src(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->image_src:Ljava/lang/String;

    return-object p0
.end method

.method public image_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->image_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public interaction_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->interaction_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public landing_page(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->landing_page:Ljava/lang/String;

    return-object p0
.end method

.method public open_market_mode(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->open_market_mode:Ljava/lang/Integer;

    return-object p0
.end method

.method public play_mode(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->play_mode:Ljava/lang/Integer;

    return-object p0
.end method

.method public sub_interaction_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->sub_interaction_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public template_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->template_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public video_duration(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->video_duration:Ljava/lang/Integer;

    return-object p0
.end method

.method public video_md5(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->video_md5:Ljava/lang/String;

    return-object p0
.end method

.method public video_reciprocal_millisecond(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->video_reciprocal_millisecond:Ljava/lang/Integer;

    return-object p0
.end method

.method public video_size(Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->video_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    return-object p0
.end method

.method public video_url(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->video_url:Ljava/lang/String;

    return-object p0
.end method

.method public web_event_handle(Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->web_event_handle:Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle;

    return-object p0
.end method