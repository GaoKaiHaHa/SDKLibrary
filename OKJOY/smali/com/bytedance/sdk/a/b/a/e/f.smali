.class public final Lcom/bytedance/sdk/a/b/a/e/f;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Lcom/bytedance/sdk/a/b/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/a/e/f$a;
    }
.end annotation


# static fields
.field private static final b:Lcom/bytedance/sdk/a/a/f;

.field private static final c:Lcom/bytedance/sdk/a/a/f;

.field private static final d:Lcom/bytedance/sdk/a/a/f;

.field private static final e:Lcom/bytedance/sdk/a/a/f;

.field private static final f:Lcom/bytedance/sdk/a/a/f;

.field private static final g:Lcom/bytedance/sdk/a/a/f;

.field private static final h:Lcom/bytedance/sdk/a/a/f;

.field private static final i:Lcom/bytedance/sdk/a/a/f;

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/a/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/bytedance/sdk/a/b/a/b/g;

.field private final l:Lcom/bytedance/sdk/a/b/v;

.field private final m:Lcom/bytedance/sdk/a/b/t$a;

.field private final n:Lcom/bytedance/sdk/a/b/a/e/g;

.field private o:Lcom/bytedance/sdk/a/b/a/e/i;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    const-string v0, "connection"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/f;->b:Lcom/bytedance/sdk/a/a/f;

    .line 59
    const-string v0, "host"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/f;->c:Lcom/bytedance/sdk/a/a/f;

    .line 60
    const-string v0, "keep-alive"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/f;->d:Lcom/bytedance/sdk/a/a/f;

    .line 61
    const-string v0, "proxy-connection"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/f;->e:Lcom/bytedance/sdk/a/a/f;

    .line 62
    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/f;->f:Lcom/bytedance/sdk/a/a/f;

    .line 63
    const-string v0, "te"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/f;->g:Lcom/bytedance/sdk/a/a/f;

    .line 64
    const-string v0, "encoding"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/f;->h:Lcom/bytedance/sdk/a/a/f;

    .line 65
    const-string v0, "upgrade"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/f;->i:Lcom/bytedance/sdk/a/a/f;

    .line 70
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/bytedance/sdk/a/a/f;

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/f;->b:Lcom/bytedance/sdk/a/a/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/f;->c:Lcom/bytedance/sdk/a/a/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/f;->d:Lcom/bytedance/sdk/a/a/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/f;->e:Lcom/bytedance/sdk/a/a/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/f;->g:Lcom/bytedance/sdk/a/a/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/f;->f:Lcom/bytedance/sdk/a/a/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/f;->h:Lcom/bytedance/sdk/a/a/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/f;->i:Lcom/bytedance/sdk/a/a/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/c;->c:Lcom/bytedance/sdk/a/a/f;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/c;->d:Lcom/bytedance/sdk/a/a/f;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/c;->e:Lcom/bytedance/sdk/a/a/f;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/c;->f:Lcom/bytedance/sdk/a/a/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/f;->j:Ljava/util/List;

    .line 83
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/bytedance/sdk/a/a/f;

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/f;->b:Lcom/bytedance/sdk/a/a/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/f;->c:Lcom/bytedance/sdk/a/a/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/f;->d:Lcom/bytedance/sdk/a/a/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/f;->e:Lcom/bytedance/sdk/a/a/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/f;->g:Lcom/bytedance/sdk/a/a/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/f;->f:Lcom/bytedance/sdk/a/a/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/f;->h:Lcom/bytedance/sdk/a/a/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/f;->i:Lcom/bytedance/sdk/a/a/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/f;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/t$a;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/a/e/g;)V
    .registers 5

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/f;->l:Lcom/bytedance/sdk/a/b/v;

    .line 102
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/f;->m:Lcom/bytedance/sdk/a/b/t$a;

    .line 103
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/f;->a:Lcom/bytedance/sdk/a/b/a/b/g;

    .line 104
    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/e/f;->n:Lcom/bytedance/sdk/a/b/a/e/g;

    .line 105
    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)",
            "Lcom/bytedance/sdk/a/b/aa$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 168
    .line 169
    new-instance v1, Lcom/bytedance/sdk/a/b/r$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/a/b/r$a;-><init>()V

    .line 170
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    move-object v3, v2

    :goto_d
    if-ge v4, v5, :cond_6a

    .line 171
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/a/e/c;

    .line 175
    if-nez v0, :cond_2b

    .line 176
    if-eqz v3, :cond_67

    iget v0, v3, Lcom/bytedance/sdk/a/b/a/c/k;->b:I

    const/16 v6, 0x64

    if-ne v0, v6, :cond_67

    .line 178
    new-instance v0, Lcom/bytedance/sdk/a/b/r$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/r$a;-><init>()V

    move-object v1, v2

    .line 170
    :goto_25
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v1

    move-object v1, v0

    goto :goto_d

    .line 183
    :cond_2b
    iget-object v6, v0, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    .line 184
    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 185
    sget-object v7, Lcom/bytedance/sdk/a/b/a/e/c;->b:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP/1.1 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c/k;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/a/c/k;

    move-result-object v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_25

    .line 187
    :cond_56
    sget-object v7, Lcom/bytedance/sdk/a/b/a/e/f;->k:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_67

    .line 188
    sget-object v7, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    invoke-virtual {v6}, Lcom/bytedance/sdk/a/a/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v1, v6, v0}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/r$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    move-object v0, v1

    move-object v1, v3

    goto :goto_25

    .line 191
    :cond_6a
    if-nez v3, :cond_74

    .line 192
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_74
    new-instance v0, Lcom/bytedance/sdk/a/b/aa$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/aa$a;-><init>()V

    sget-object v2, Lcom/bytedance/sdk/a/b/w;->d:Lcom/bytedance/sdk/a/b/w;

    .line 195
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/w;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    iget v2, v3, Lcom/bytedance/sdk/a/b/a/c/k;->b:I

    .line 196
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(I)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    iget-object v2, v3, Lcom/bytedance/sdk/a/b/a/c/k;->c:Ljava/lang/String;

    .line 197
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 198
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/r$a;->a()Lcom/bytedance/sdk/a/b/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 194
    return-object v0
.end method

.method public static b(Lcom/bytedance/sdk/a/b/y;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/y;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y;->c()Lcom/bytedance/sdk/a/b/r;

    move-result-object v1

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/c;

    sget-object v3, Lcom/bytedance/sdk/a/b/a/e/c;->c:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/c;

    sget-object v3, Lcom/bytedance/sdk/a/b/a/e/c;->d:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/a/b/a/c/i;->a(Lcom/bytedance/sdk/a/b/s;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v0, "Host"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_41

    .line 150
    new-instance v3, Lcom/bytedance/sdk/a/b/a/e/c;

    sget-object v4, Lcom/bytedance/sdk/a/b/a/e/c;->f:Lcom/bytedance/sdk/a/a/f;

    invoke-direct {v3, v4, v0}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_41
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/c;

    sget-object v3, Lcom/bytedance/sdk/a/b/a/e/c;->e:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v3

    :goto_58
    if-ge v0, v3, :cond_7f

    .line 156
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v4

    .line 157
    sget-object v5, Lcom/bytedance/sdk/a/b/a/e/f;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    .line 158
    new-instance v5, Lcom/bytedance/sdk/a/b/a/e/c;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 161
    :cond_7f
    return-object v2
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/y;J)Lcom/bytedance/sdk/a/a/r;
    .registers 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/f;->o:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->h()Lcom/bytedance/sdk/a/a/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/f;->o:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->d()Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/e/f;->a(Ljava/util/List;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 137
    if-eqz p1, :cond_17

    sget-object v1, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/aa$a;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_17

    .line 138
    const/4 v0, 0x0

    .line 140
    :cond_17
    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/ab;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/f;->a:Lcom/bytedance/sdk/a/b/a/b/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/f;->a:Lcom/bytedance/sdk/a/b/a/b/g;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/p;->f(Lcom/bytedance/sdk/a/b/e;)V

    .line 204
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Lcom/bytedance/sdk/a/b/aa;)J

    move-result-wide v2

    .line 206
    new-instance v1, Lcom/bytedance/sdk/a/b/a/e/f$a;

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/f;->o:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/a/e/i;->g()Lcom/bytedance/sdk/a/a/s;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/bytedance/sdk/a/b/a/e/f$a;-><init>(Lcom/bytedance/sdk/a/b/a/e/f;Lcom/bytedance/sdk/a/a/s;)V

    .line 207
    new-instance v4, Lcom/bytedance/sdk/a/b/a/c/h;

    invoke-static {v1}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object v1

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/a/a/e;)V

    return-object v4
.end method

.method public a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/f;->n:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/g;->b()V

    .line 126
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/y;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/f;->o:Lcom/bytedance/sdk/a/b/a/e/i;

    if-eqz v0, :cond_5

    .line 121
    :goto_4
    return-void

    .line 116
    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    .line 117
    :goto_c
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/e/f;->b(Lcom/bytedance/sdk/a/b/y;)Ljava/util/List;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/f;->n:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Ljava/util/List;Z)Lcom/bytedance/sdk/a/b/a/e/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/f;->o:Lcom/bytedance/sdk/a/b/a/e/i;

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/f;->o:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->e()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/f;->m:Lcom/bytedance/sdk/a/b/t$a;

    invoke-interface {v1}, Lcom/bytedance/sdk/a/b/t$a;->c()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/a/t;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/a/t;

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/f;->o:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->f()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/f;->m:Lcom/bytedance/sdk/a/b/t$a;

    invoke-interface {v1}, Lcom/bytedance/sdk/a/b/t$a;->d()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/a/t;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/a/t;

    goto :goto_4

    .line 116
    :cond_3d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/f;->o:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->h()Lcom/bytedance/sdk/a/a/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/r;->close()V

    .line 131
    return-void
.end method
