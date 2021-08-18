.class public final Lokhttp3/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Request$Builder;
    }
.end annotation


# instance fields
.field private final body:Lokhttp3/RequestBody;

.field private volatile cacheControl:Lokhttp3/CacheControl;

.field private final headers:Lokhttp3/Headers;

.field private final method:Ljava/lang/String;

.field private final tag:Ljava/lang/Object;

.field private final url:Lokhttp3/HttpUrl;


# direct methods
.method private constructor <init>(Lokhttp3/Request$Builder;)V
    .registers 3
    .param p1, "builder"    # Lokhttp3/Request$Builder;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    # getter for: Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;
    invoke-static {p1}, Lokhttp3/Request$Builder;->access$000(Lokhttp3/Request$Builder;)Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 37
    # getter for: Lokhttp3/Request$Builder;->method:Ljava/lang/String;
    invoke-static {p1}, Lokhttp3/Request$Builder;->access$100(Lokhttp3/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 38
    # getter for: Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;
    invoke-static {p1}, Lokhttp3/Request$Builder;->access$200(Lokhttp3/Request$Builder;)Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 39
    # getter for: Lokhttp3/Request$Builder;->body:Lokhttp3/RequestBody;
    invoke-static {p1}, Lokhttp3/Request$Builder;->access$300(Lokhttp3/Request$Builder;)Lokhttp3/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    .line 40
    # getter for: Lokhttp3/Request$Builder;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lokhttp3/Request$Builder;->access$400(Lokhttp3/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    # getter for: Lokhttp3/Request$Builder;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lokhttp3/Request$Builder;->access$400(Lokhttp3/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2b

    :cond_2a
    move-object v0, p0

    :goto_2b
    iput-object v0, p0, Lokhttp3/Request;->tag:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/Request$Builder;Lokhttp3/Request$1;)V
    .registers 3
    .param p1, "x0"    # Lokhttp3/Request$Builder;
    .param p2, "x1"    # Lokhttp3/Request$1;

    .line 26
    invoke-direct {p0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lokhttp3/Request;)Lokhttp3/Headers;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Request;

    .line 26
    iget-object v0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method static synthetic access$600(Lokhttp3/Request;)Lokhttp3/HttpUrl;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Request;

    .line 26
    iget-object v0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method static synthetic access$700(Lokhttp3/Request;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Request;

    .line 26
    iget-object v0, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lokhttp3/Request;)Lokhttp3/RequestBody;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Request;

    .line 26
    iget-object v0, p0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    return-object v0
.end method

.method static synthetic access$900(Lokhttp3/Request;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Request;

    .line 26
    iget-object v0, p0, Lokhttp3/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public body()Lokhttp3/RequestBody;
    .registers 2

    .line 64
    iget-object v0, p0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    return-object v0
.end method

.method public cacheControl()Lokhttp3/CacheControl;
    .registers 3

    .line 80
    iget-object v0, p0, Lokhttp3/Request;->cacheControl:Lokhttp3/CacheControl;

    .line 81
    .local v0, "result":Lokhttp3/CacheControl;
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_e

    :cond_6
    iget-object v1, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-static {v1}, Lokhttp3/CacheControl;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Request;->cacheControl:Lokhttp3/CacheControl;

    :goto_e
    return-object v1
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public headers()Lokhttp3/Headers;
    .registers 2

    .line 52
    iget-object v0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public isHttps()Z
    .registers 2

    .line 85
    iget-object v0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v0

    return v0
.end method

.method public method()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public newBuilder()Lokhttp3/Request$Builder;
    .registers 3

    .line 72
    new-instance v0, Lokhttp3/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;Lokhttp3/Request$1;)V

    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .registers 2

    .line 68
    iget-object v0, p0, Lokhttp3/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Request;->tag:Ljava/lang/Object;

    if-eq v1, p0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url()Lokhttp3/HttpUrl;
    .registers 2

    .line 44
    iget-object v0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    return-object v0
.end method
