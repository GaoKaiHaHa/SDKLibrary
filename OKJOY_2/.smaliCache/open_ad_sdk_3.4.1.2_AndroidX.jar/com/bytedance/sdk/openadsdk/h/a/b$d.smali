.class Lcom/bytedance/sdk/openadsdk/h/a/b$d;
.super Ljava/lang/Object;
.source "GifLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/h/a/c;

.field b:Lcom/bytedance/sdk/adnet/core/m;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/h/a/b$b;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/bytedance/sdk/adnet/err/VAdError;

.field e:[B


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/h/a/c;Lcom/bytedance/sdk/openadsdk/h/a/b$b;)V
    .registers 4

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->c:Ljava/util/List;

    .line 197
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->a:Lcom/bytedance/sdk/openadsdk/h/a/c;

    .line 198
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->a(Lcom/bytedance/sdk/openadsdk/h/a/b$b;)V

    .line 199
    return-void
.end method


# virtual methods
.method a(Lcom/bytedance/sdk/openadsdk/h/a/b$b;)V
    .registers 3

    .line 202
    if-eqz p1, :cond_7

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_7
    return-void
.end method

.method a()Z
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->d:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->e:[B

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method