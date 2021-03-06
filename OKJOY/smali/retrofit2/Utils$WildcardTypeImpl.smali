.class final Lretrofit2/Utils$WildcardTypeImpl;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardTypeImpl"
.end annotation


# instance fields
.field private final lowerBound:Ljava/lang/reflect/Type;

.field private final upperBound:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 6
    .param p1, "upperBounds"    # [Ljava/lang/reflect/Type;
    .param p2, "lowerBounds"    # [Ljava/lang/reflect/Type;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    array-length v0, p2

    if-le v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 478
    :cond_e
    array-length v0, p1

    if-eq v0, v1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 480
    :cond_17
    array-length v0, p2

    if-ne v0, v1, :cond_3e

    .line 481
    aget-object v0, p2, v2

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 482
    :cond_24
    aget-object v0, p2, v2

    invoke-static {v0}, Lretrofit2/Utils;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    .line 483
    aget-object v0, p1, v2

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_35

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 484
    :cond_35
    aget-object v0, p2, v2

    iput-object v0, p0, Lretrofit2/Utils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    .line 485
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lretrofit2/Utils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    .line 492
    :goto_3d
    return-void

    .line 487
    :cond_3e
    aget-object v0, p1, v2

    if-nez v0, :cond_48

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 488
    :cond_48
    aget-object v0, p1, v2

    invoke-static {v0}, Lretrofit2/Utils;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lretrofit2/Utils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    .line 490
    aget-object v0, p1, v2

    iput-object v0, p0, Lretrofit2/Utils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    goto :goto_3d
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 503
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/WildcardType;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-static {p0, p1}, Lretrofit2/Utils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .registers 4

    .prologue
    .line 499
    iget-object v0, p0, Lretrofit2/Utils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lretrofit2/Utils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lretrofit2/Utils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    goto :goto_c
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .registers 4

    .prologue
    .line 495
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lretrofit2/Utils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 508
    iget-object v0, p0, Lretrofit2/Utils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lretrofit2/Utils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    :goto_c
    iget-object v1, p0, Lretrofit2/Utils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 512
    iget-object v0, p0, Lretrofit2/Utils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lretrofit2/Utils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lretrofit2/Utils;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    :goto_1d
    return-object v0

    .line 513
    :cond_1e
    iget-object v0, p0, Lretrofit2/Utils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_27

    const-string v0, "?"

    goto :goto_1d

    .line 514
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lretrofit2/Utils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lretrofit2/Utils;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method
