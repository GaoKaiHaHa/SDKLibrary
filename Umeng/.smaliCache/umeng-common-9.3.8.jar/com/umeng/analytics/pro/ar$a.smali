.class Lcom/umeng/analytics/pro/ar$a;
.super Ljava/lang/Object;
.source "TBaseHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/ar$1;)V
    .registers 2

    .line 202
    invoke-direct {p0}, Lcom/umeng/analytics/pro/ar$a;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 204
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 205
    const/4 p1, 0x0

    return p1

    .line 206
    :cond_6
    if-nez p1, :cond_a

    .line 207
    const/4 p1, -0x1

    return p1

    .line 208
    :cond_a
    if-nez p2, :cond_e

    .line 209
    const/4 p1, 0x1

    return p1

    .line 210
    :cond_e
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 211
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/umeng/analytics/pro/ar;->a(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1

    .line 212
    :cond_1b
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_28

    .line 213
    check-cast p1, Ljava/util/Set;

    check-cast p2, Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/umeng/analytics/pro/ar;->a(Ljava/util/Set;Ljava/util/Set;)I

    move-result p1

    return p1

    .line 214
    :cond_28
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_35

    .line 215
    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/umeng/analytics/pro/ar;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result p1

    return p1

    .line 216
    :cond_35
    instance-of v0, p1, [B

    if-eqz v0, :cond_46

    .line 217
    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Lcom/umeng/analytics/pro/ar;->a([B[B)I

    move-result p1

    return p1

    .line 219
    :cond_46
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1, p2}, Lcom/umeng/analytics/pro/ar;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method