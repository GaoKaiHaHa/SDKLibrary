.class Lcom/bytedance/sdk/openadsdk/g/a/b$d;
.super Ljava/lang/Object;
.source "GifLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/g/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/g/a/c;

.field b:Lcom/bytedance/sdk/adnet/core/n;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/g/a/b$b;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/bytedance/sdk/adnet/err/VAdError;

.field e:[B


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/g/a/c;Lcom/bytedance/sdk/openadsdk/g/a/b$b;)V
    .registers 4

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->c:Ljava/util/List;

    .line 180
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->a:Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 181
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->a(Lcom/bytedance/sdk/openadsdk/g/a/b$b;)V

    .line 182
    return-void
.end method


# virtual methods
.method a(Lcom/bytedance/sdk/openadsdk/g/a/b$b;)V
    .registers 3

    .prologue
    .line 185
    if-eqz p1, :cond_7

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_7
    return-void
.end method

.method a()Z
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->d:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->e:[B

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
