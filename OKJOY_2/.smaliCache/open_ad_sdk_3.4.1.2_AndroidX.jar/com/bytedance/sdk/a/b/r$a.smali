.class public final Lcom/bytedance/sdk/a/b/r$a;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 345
    if-eqz p1, :cond_9f

    .line 346
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_97

    .line 347
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    const/16 v3, 0x7f

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ge v2, v0, :cond_3e

    .line 348
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 349
    const/16 v8, 0x20

    if-le v7, v8, :cond_22

    if-ge v7, v3, :cond_22

    .line 347
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 350
    :cond_22
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-array v0, v5, [Ljava/lang/Object;

    .line 351
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    aput-object p1, v0, v4

    .line 350
    const-string p1, "Unexpected char %#04x at %d in header name: %s"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 354
    :cond_3e
    if-eqz p2, :cond_78

    .line 356
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v1

    :goto_45
    if-ge v2, v0, :cond_77

    .line 357
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 358
    const/16 v8, 0x1f

    if-gt v7, v8, :cond_53

    const/16 v8, 0x9

    if-ne v7, v8, :cond_58

    :cond_53
    if-ge v7, v3, :cond_58

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 359
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 360
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    .line 359
    const-string p1, "Unexpected char %#04x at %d in %s value: %s"

    invoke-static {p1, v3}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_77
    return-void

    .line 355
    :cond_78
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value for name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " == null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 346
    :cond_97
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 345
    :cond_9f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;
    .registers 6

    .line 281
    const-string v0, ":"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 282
    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/a/b/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    move-result-object p1

    return-object p1

    .line 284
    :cond_19
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_2a

    .line 287
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/bytedance/sdk/a/b/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    move-result-object p1

    return-object p1

    .line 289
    :cond_2a
    invoke-virtual {p0, v2, p1}, Lcom/bytedance/sdk/a/b/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;
    .registers 3

    .line 308
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/a/b/r$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/b/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/bytedance/sdk/a/b/r;
    .registers 2

    .line 378
    new-instance v0, Lcom/bytedance/sdk/a/b/r;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/r;-><init>(Lcom/bytedance/sdk/a/b/r$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;
    .registers 4

    .line 323
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 324
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 325
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 326
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 327
    add-int/lit8 v0, v0, -0x2

    .line 323
    :cond_23
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 330
    :cond_26
    return-object p0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;
    .registers 3

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/a/b/r$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/r$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/b/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    .line 341
    return-object p0
.end method