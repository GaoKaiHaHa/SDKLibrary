.class public final Lcom/sigmob/wire/protobuf/FileOptions;
.super Lcom/sigmob/wire/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/wire/protobuf/FileOptions$ProtoAdapter_FileOptions;,
        Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;,
        Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message<",
        "Lcom/sigmob/wire/protobuf/FileOptions;",
        "Lcom/sigmob/wire/protobuf/FileOptions$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/wire/protobuf/FileOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CC_ENABLE_ARENAS:Ljava/lang/Boolean;

.field public static final DEFAULT_CC_GENERIC_SERVICES:Ljava/lang/Boolean;

.field public static final DEFAULT_CSHARP_NAMESPACE:Ljava/lang/String; = ""

.field public static final DEFAULT_DEPRECATED:Ljava/lang/Boolean;

.field public static final DEFAULT_GO_PACKAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_JAVA_GENERATE_EQUALS_AND_HASH:Ljava/lang/Boolean;

.field public static final DEFAULT_JAVA_GENERIC_SERVICES:Ljava/lang/Boolean;

.field public static final DEFAULT_JAVA_MULTIPLE_FILES:Ljava/lang/Boolean;

.field public static final DEFAULT_JAVA_OUTER_CLASSNAME:Ljava/lang/String; = ""

.field public static final DEFAULT_JAVA_PACKAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_JAVA_STRING_CHECK_UTF8:Ljava/lang/Boolean;

.field public static final DEFAULT_OBJC_CLASS_PREFIX:Ljava/lang/String; = ""

.field public static final DEFAULT_OPTIMIZE_FOR:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

.field public static final DEFAULT_PY_GENERIC_SERVICES:Ljava/lang/Boolean;

.field private static final serialVersionUID:J


# instance fields
.field public final cc_enable_arenas:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x1f
    .end annotation
.end field

.field public final cc_generic_services:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x10
    .end annotation
.end field

.field public final csharp_namespace:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x25
    .end annotation
.end field

.field public final deprecated:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x17
    .end annotation
.end field

.field public final go_package:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xb
    .end annotation
.end field

.field public final java_generate_equals_and_hash:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x14
    .end annotation
.end field

.field public final java_generic_services:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x11
    .end annotation
.end field

.field public final java_multiple_files:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xa
    .end annotation
.end field

.field public final java_outer_classname:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x8
    .end annotation
.end field

.field public final java_package:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final java_string_check_utf8:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x1b
    .end annotation
.end field

.field public final objc_class_prefix:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x24
    .end annotation
.end field

.field public final optimize_for:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.FileOptions$OptimizeMode#ADAPTER"
        tag = 0x9
    .end annotation
.end field

.field public final py_generic_services:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x12
    .end annotation
.end field

.field public final uninterpreted_option:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.UninterpretedOption#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x3e7
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/sigmob/wire/protobuf/FileOptions$ProtoAdapter_FileOptions;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/FileOptions$ProtoAdapter_FileOptions;-><init>()V

    sput-object v0, Lcom/sigmob/wire/protobuf/FileOptions;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/wire/protobuf/FileOptions;->DEFAULT_JAVA_MULTIPLE_FILES:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/wire/protobuf/FileOptions;->DEFAULT_JAVA_GENERATE_EQUALS_AND_HASH:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/wire/protobuf/FileOptions;->DEFAULT_JAVA_STRING_CHECK_UTF8:Ljava/lang/Boolean;

    sget-object v1, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->SPEED:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    sput-object v1, Lcom/sigmob/wire/protobuf/FileOptions;->DEFAULT_OPTIMIZE_FOR:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    sput-object v0, Lcom/sigmob/wire/protobuf/FileOptions;->DEFAULT_CC_GENERIC_SERVICES:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/wire/protobuf/FileOptions;->DEFAULT_JAVA_GENERIC_SERVICES:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/wire/protobuf/FileOptions;->DEFAULT_PY_GENERIC_SERVICES:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/wire/protobuf/FileOptions;->DEFAULT_DEPRECATED:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/wire/protobuf/FileOptions;->DEFAULT_CC_ENABLE_ARENAS:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    sget-object v16, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    invoke-direct/range {v0 .. v16}, Lcom/sigmob/wire/protobuf/FileOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption;",
            ">;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    sget-object v1, Lcom/sigmob/wire/protobuf/FileOptions;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    move-object/from16 v2, p16

    invoke-direct {p0, v1, v2}, Lcom/sigmob/wire/Message;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions;->java_package:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions;->java_outer_classname:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions;->java_multiple_files:Ljava/lang/Boolean;

    move-object v1, p4

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions;->java_generate_equals_and_hash:Ljava/lang/Boolean;

    move-object v1, p5

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions;->java_string_check_utf8:Ljava/lang/Boolean;

    move-object v1, p6

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions;->optimize_for:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    move-object v1, p7

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions;->go_package:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions;->cc_generic_services:Ljava/lang/Boolean;

    move-object v1, p9

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions;->java_generic_services:Ljava/lang/Boolean;

    move-object v1, p10

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions;->py_generic_services:Ljava/lang/Boolean;

    move-object v1, p11

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions;->deprecated:Ljava/lang/Boolean;

    move-object v1, p12

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions;->cc_enable_arenas:Ljava/lang/Boolean;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions;->objc_class_prefix:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions;->csharp_namespace:Ljava/lang/String;

    const-string v1, "uninterpreted_option"

    move-object/from16 v2, p15

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions;->uninterpreted_option:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/sigmob/wire/protobuf/FileOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/sigmob/wire/protobuf/FileOptions;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FileOptions;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/FileOptions;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_package:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileOptions;->java_package:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_outer_classname:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileOptions;->java_outer_classname:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_multiple_files:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileOptions;->java_multiple_files:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_generate_equals_and_hash:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileOptions;->java_generate_equals_and_hash:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_string_check_utf8:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileOptions;->java_string_check_utf8:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->optimize_for:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileOptions;->optimize_for:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->go_package:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileOptions;->go_package:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->cc_generic_services:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileOptions;->cc_generic_services:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_generic_services:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileOptions;->java_generic_services:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->py_generic_services:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileOptions;->py_generic_services:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->deprecated:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileOptions;->deprecated:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->cc_enable_arenas:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileOptions;->cc_enable_arenas:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->objc_class_prefix:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileOptions;->objc_class_prefix:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->csharp_namespace:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileOptions;->csharp_namespace:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->uninterpreted_option:Ljava/util/List;

    iget-object p1, p1, Lcom/sigmob/wire/protobuf/FileOptions;->uninterpreted_option:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b1

    goto :goto_b2

    :cond_b1
    move v0, v2

    :goto_b2
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    if-nez v0, :cond_cc

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FileOptions;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_package:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_outer_classname:Ljava/lang/String;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_multiple_files:Ljava/lang/Boolean;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_generate_equals_and_hash:Ljava/lang/Boolean;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_string_check_utf8:Ljava/lang/Boolean;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_4d

    :cond_4c
    move v1, v2

    :goto_4d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->optimize_for:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->hashCode()I

    move-result v1

    goto :goto_5a

    :cond_59
    move v1, v2

    :goto_5a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->go_package:Ljava/lang/String;

    if-eqz v1, :cond_66

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_67

    :cond_66
    move v1, v2

    :goto_67
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->cc_generic_services:Ljava/lang/Boolean;

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_74

    :cond_73
    move v1, v2

    :goto_74
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_generic_services:Ljava/lang/Boolean;

    if-eqz v1, :cond_80

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_81

    :cond_80
    move v1, v2

    :goto_81
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->py_generic_services:Ljava/lang/Boolean;

    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_8e

    :cond_8d
    move v1, v2

    :goto_8e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->deprecated:Ljava/lang/Boolean;

    if-eqz v1, :cond_9a

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_9b

    :cond_9a
    move v1, v2

    :goto_9b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->cc_enable_arenas:Ljava/lang/Boolean;

    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_a8

    :cond_a7
    move v1, v2

    :goto_a8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->objc_class_prefix:Ljava/lang/String;

    if-eqz v1, :cond_b4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b5

    :cond_b4
    move v1, v2

    :goto_b5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->csharp_namespace:Ljava/lang/String;

    if-eqz v1, :cond_c0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_c0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->uninterpreted_option:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    :cond_cc
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FileOptions;->newBuilder()Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_package:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_package:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_outer_classname:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_outer_classname:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_multiple_files:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_multiple_files:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_generate_equals_and_hash:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_generate_equals_and_hash:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_string_check_utf8:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_string_check_utf8:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->optimize_for:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->optimize_for:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->go_package:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->go_package:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->cc_generic_services:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->cc_generic_services:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_generic_services:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_generic_services:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->py_generic_services:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->py_generic_services:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->deprecated:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->deprecated:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->cc_enable_arenas:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->cc_enable_arenas:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->objc_class_prefix:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->objc_class_prefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->csharp_namespace:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->csharp_namespace:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->uninterpreted_option:Ljava/util/List;

    const-string v2, "uninterpreted_option"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->uninterpreted_option:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FileOptions;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_package:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", java_package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_package:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_outer_classname:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v1, ", java_outer_classname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_outer_classname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_multiple_files:Ljava/lang/Boolean;

    if-eqz v1, :cond_32

    const-string v1, ", java_multiple_files="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_multiple_files:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_generate_equals_and_hash:Ljava/lang/Boolean;

    if-eqz v1, :cond_41

    const-string v1, ", java_generate_equals_and_hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_generate_equals_and_hash:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_string_check_utf8:Ljava/lang/Boolean;

    if-eqz v1, :cond_50

    const-string v1, ", java_string_check_utf8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_string_check_utf8:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->optimize_for:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    if-eqz v1, :cond_5f

    const-string v1, ", optimize_for="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileOptions;->optimize_for:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->go_package:Ljava/lang/String;

    if-eqz v1, :cond_6e

    const-string v1, ", go_package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileOptions;->go_package:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->cc_generic_services:Ljava/lang/Boolean;

    if-eqz v1, :cond_7d

    const-string v1, ", cc_generic_services="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileOptions;->cc_generic_services:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7d
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_generic_services:Ljava/lang/Boolean;

    if-eqz v1, :cond_8c

    const-string v1, ", java_generic_services="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileOptions;->java_generic_services:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8c
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->py_generic_services:Ljava/lang/Boolean;

    if-eqz v1, :cond_9b

    const-string v1, ", py_generic_services="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileOptions;->py_generic_services:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9b
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->deprecated:Ljava/lang/Boolean;

    if-eqz v1, :cond_aa

    const-string v1, ", deprecated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileOptions;->deprecated:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_aa
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->cc_enable_arenas:Ljava/lang/Boolean;

    if-eqz v1, :cond_b9

    const-string v1, ", cc_enable_arenas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileOptions;->cc_enable_arenas:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b9
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->objc_class_prefix:Ljava/lang/String;

    if-eqz v1, :cond_c8

    const-string v1, ", objc_class_prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileOptions;->objc_class_prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c8
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->csharp_namespace:Ljava/lang/String;

    if-eqz v1, :cond_d7

    const-string v1, ", csharp_namespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileOptions;->csharp_namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d7
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileOptions;->uninterpreted_option:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ea

    const-string v1, ", uninterpreted_option="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileOptions;->uninterpreted_option:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_ea
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "FileOptions{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method