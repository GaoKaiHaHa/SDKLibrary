.class final Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type$ProtoAdapter_Type;
.super Lcom/sigmob/wire/EnumAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/EnumAdapter",
        "<",
        "Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-class v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    invoke-direct {p0, v0}, Lcom/sigmob/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic fromValue(I)Lcom/sigmob/wire/WireEnum;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type$ProtoAdapter_Type;->fromValue(I)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    move-result-object v0

    return-object v0
.end method

.method protected fromValue(I)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;
    .registers 3

    invoke-static {p1}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->fromValue(I)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    move-result-object v0

    return-object v0
.end method
