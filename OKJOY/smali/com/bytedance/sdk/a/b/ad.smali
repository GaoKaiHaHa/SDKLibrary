.class public final enum Lcom/bytedance/sdk/a/b/ad;
.super Ljava/lang/Enum;
.source "TlsVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bytedance/sdk/a/b/ad;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/a/b/ad;

.field public static final enum b:Lcom/bytedance/sdk/a/b/ad;

.field public static final enum c:Lcom/bytedance/sdk/a/b/ad;

.field public static final enum d:Lcom/bytedance/sdk/a/b/ad;

.field public static final enum e:Lcom/bytedance/sdk/a/b/ad;

.field private static final synthetic g:[Lcom/bytedance/sdk/a/b/ad;


# instance fields
.field final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/bytedance/sdk/a/b/ad;

    const-string v1, "TLS_1_3"

    const-string v2, "TLSv1.3"

    invoke-direct {v0, v1, v3, v2}, Lcom/bytedance/sdk/a/b/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/a/b/ad;->a:Lcom/bytedance/sdk/a/b/ad;

    .line 28
    new-instance v0, Lcom/bytedance/sdk/a/b/ad;

    const-string v1, "TLS_1_2"

    const-string v2, "TLSv1.2"

    invoke-direct {v0, v1, v4, v2}, Lcom/bytedance/sdk/a/b/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/a/b/ad;->b:Lcom/bytedance/sdk/a/b/ad;

    .line 29
    new-instance v0, Lcom/bytedance/sdk/a/b/ad;

    const-string v1, "TLS_1_1"

    const-string v2, "TLSv1.1"

    invoke-direct {v0, v1, v5, v2}, Lcom/bytedance/sdk/a/b/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/a/b/ad;->c:Lcom/bytedance/sdk/a/b/ad;

    .line 30
    new-instance v0, Lcom/bytedance/sdk/a/b/ad;

    const-string v1, "TLS_1_0"

    const-string v2, "TLSv1"

    invoke-direct {v0, v1, v6, v2}, Lcom/bytedance/sdk/a/b/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/a/b/ad;->d:Lcom/bytedance/sdk/a/b/ad;

    .line 31
    new-instance v0, Lcom/bytedance/sdk/a/b/ad;

    const-string v1, "SSL_3_0"

    const-string v2, "SSLv3"

    invoke-direct {v0, v1, v7, v2}, Lcom/bytedance/sdk/a/b/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/a/b/ad;->e:Lcom/bytedance/sdk/a/b/ad;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bytedance/sdk/a/b/ad;

    sget-object v1, Lcom/bytedance/sdk/a/b/ad;->a:Lcom/bytedance/sdk/a/b/ad;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/sdk/a/b/ad;->b:Lcom/bytedance/sdk/a/b/ad;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/sdk/a/b/ad;->c:Lcom/bytedance/sdk/a/b/ad;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bytedance/sdk/a/b/ad;->d:Lcom/bytedance/sdk/a/b/ad;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bytedance/sdk/a/b/ad;->e:Lcom/bytedance/sdk/a/b/ad;

    aput-object v1, v0, v7

    sput-object v0, Lcom/bytedance/sdk/a/b/ad;->g:[Lcom/bytedance/sdk/a/b/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/ad;->f:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/ad;
    .registers 4

    .prologue
    .line 41
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_66

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_7c

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected TLS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :sswitch_24
    const-string v1, "TLSv1.3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_2e
    const-string v1, "TLSv1.2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_38
    const-string v1, "TLSv1.1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_42
    const-string v1, "TLSv1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_4c
    const-string v1, "SSLv3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x4

    goto :goto_8

    .line 43
    :pswitch_56
    sget-object v0, Lcom/bytedance/sdk/a/b/ad;->a:Lcom/bytedance/sdk/a/b/ad;

    .line 51
    :goto_58
    return-object v0

    .line 45
    :pswitch_59
    sget-object v0, Lcom/bytedance/sdk/a/b/ad;->b:Lcom/bytedance/sdk/a/b/ad;

    goto :goto_58

    .line 47
    :pswitch_5c
    sget-object v0, Lcom/bytedance/sdk/a/b/ad;->c:Lcom/bytedance/sdk/a/b/ad;

    goto :goto_58

    .line 49
    :pswitch_5f
    sget-object v0, Lcom/bytedance/sdk/a/b/ad;->d:Lcom/bytedance/sdk/a/b/ad;

    goto :goto_58

    .line 51
    :pswitch_62
    sget-object v0, Lcom/bytedance/sdk/a/b/ad;->e:Lcom/bytedance/sdk/a/b/ad;

    goto :goto_58

    .line 41
    nop

    :sswitch_data_66
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_38
        -0x1dfc3f26 -> :sswitch_2e
        -0x1dfc3f25 -> :sswitch_24
        0x4b88569 -> :sswitch_4c
        0x4c38896 -> :sswitch_42
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_56
        :pswitch_59
        :pswitch_5c
        :pswitch_5f
        :pswitch_62
    .end packed-switch
.end method

.method static varargs a([Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    array-length v2, p0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_16

    aget-object v3, p0, v0

    .line 59
    invoke-static {v3}, Lcom/bytedance/sdk/a/b/ad;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/ad;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 61
    :cond_16
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/ad;
    .registers 2

    .prologue
    .line 26
    const-class v0, Lcom/bytedance/sdk/a/b/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/ad;

    return-object v0
.end method

.method public static values()[Lcom/bytedance/sdk/a/b/ad;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/bytedance/sdk/a/b/ad;->g:[Lcom/bytedance/sdk/a/b/ad;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/a/b/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/a/b/ad;

    return-object v0
.end method
