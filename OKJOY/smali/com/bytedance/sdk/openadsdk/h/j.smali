.class Lcom/bytedance/sdk/openadsdk/h/j;
.super Ljava/net/ProxySelector;
.source "SkipProxySelector.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/net/ProxySelector;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/j;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    .line 17
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/j;->b:Ljava/net/ProxySelector;

    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/j;->c:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/h/j;->d:I

    .line 24
    return-void
.end method

.method static a(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 41
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/j;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/h/j;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 42
    return-void
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .registers 5

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/j;->b:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 38
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    if-nez p1, :cond_a

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/j;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/h/j;->d:I

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v1

    if-ne v0, v1, :cond_21

    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/j;->a:Ljava/util/List;

    :goto_20
    return-object v0

    :cond_21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/j;->b:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    goto :goto_20
.end method