.class public final Lcom/bytedance/sdk/a/b/a/e/n;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private a:I

.field private final b:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    return-void
.end method


# virtual methods
.method a(II)Lcom/bytedance/sdk/a/b/a/e/n;
    .registers 6

    .line 77
    if-ltz p1, :cond_12

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_12

    .line 81
    :cond_8
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 82
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    .line 83
    aput p2, v0, p1

    .line 84
    return-object p0

    .line 78
    :cond_12
    :goto_12
    return-object p0
.end method

.method a()V
    .registers 3

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    .line 73
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 74
    return-void
.end method

.method a(Lcom/bytedance/sdk/a/b/a/e/n;)V
    .registers 4

    .line 148
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_16

    .line 149
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/a/e/n;->a(I)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_13

    .line 150
    :cond_c
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/a/e/n;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/n;->a(II)Lcom/bytedance/sdk/a/b/a/e/n;

    .line 148
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_16
    return-void
.end method

.method a(I)Z
    .registers 4

    .line 91
    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 92
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method b()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method b(I)I
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method c()I
    .registers 3

    .line 113
    nop

    .line 114
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method c(I)I
    .registers 3

    .line 124
    nop

    .line 125
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    const/4 v0, 0x4

    aget p1, p1, v0

    :cond_c
    return p1
.end method

.method d()I
    .registers 3

    .line 139
    nop

    .line 140
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    goto :goto_10

    :cond_d
    const v0, 0xffff

    :goto_10
    return v0
.end method

.method d(I)I
    .registers 3

    .line 129
    nop

    .line 130
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    const/4 v0, 0x5

    aget p1, p1, v0

    :cond_c
    return p1
.end method