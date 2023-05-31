.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_RETRY_COUNT:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final retry_count:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x3
    .end annotation
.end field

.field public final rv_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.RvAdSetting#ADAPTER"
        tag = 0x1
    .end annotation
.end field

.field public final splash_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.SplashAdSetting#ADAPTER"
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$ProtoAdapter_AdSetting;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$ProtoAdapter_AdSetting;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->DEFAULT_RETRY_COUNT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;Ljava/lang/Integer;)V
    .registers 5

    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;-><init>(Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->rv_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->splash_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->retry_count:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->rv_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->rv_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->splash_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->splash_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->retry_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->retry_count:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_39
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_36

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->rv_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->rv_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->splash_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->splash_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->retry_count:Ljava/lang/Integer;

    if-eqz v2, :cond_33

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->retry_count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_33
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_36
    return v0

    :cond_37
    move v0, v1

    goto :goto_19

    :cond_39
    move v0, v1

    goto :goto_26
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->rv_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;->rv_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->splash_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;->splash_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->retry_count:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;->retry_count:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->rv_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    if-eqz v1, :cond_14

    const-string v1, ", rv_setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->rv_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->splash_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;

    if-eqz v1, :cond_23

    const-string v1, ", splash_setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->splash_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->retry_count:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    const-string v1, ", retry_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->retry_count:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_32
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "AdSetting{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
