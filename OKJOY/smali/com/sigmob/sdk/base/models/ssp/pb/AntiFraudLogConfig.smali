.class public final Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;",
        "Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field public final events:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.ssp.pb.MotionConfig#ADAPTER"
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$ProtoAdapter_AntiFraudLogConfig;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$ProtoAdapter_AntiFraudLogConfig;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;-><init>(Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    const-string v0, "events"

    invoke-static {v0, p2}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->events:Ljava/util/List;

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
    instance-of v2, p1, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->events:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->events:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2f
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;->hashCode()I

    move-result v0

    :goto_18
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    const-string v1, "events"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->events:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;->events:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->newBuilder()Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    if-eqz v1, :cond_14

    const-string v1, ", motion_config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, ", events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->events:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_27
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "AntiFraudLogConfig{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
