.class Lokhttp3/internal/cache/CacheInterceptor$2;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lokhttp3/internal/cache/CacheInterceptor;

.field final synthetic val$cacheBody:Lokio/BufferedSink;

.field final synthetic val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

.field final synthetic val$source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/CacheInterceptor;Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/BufferedSink;)V
    .registers 5
    .param p1, "this$0"    # Lokhttp3/internal/cache/CacheInterceptor;

    .line 191
    iput-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->this$0:Lokhttp3/internal/cache/CacheInterceptor;

    iput-object p2, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$source:Lokio/BufferedSource;

    iput-object p3, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

    iput-object p4, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$cacheBody:Lokio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    if-nez v0, :cond_16

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 225
    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    .line 227
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Lokhttp3/internal/cache/CacheRequest;->abort()V

    .line 229
    :cond_16
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 230
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 13
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$source:Lokio/BufferedSource;

    invoke-interface {v1, p1, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_30

    .line 204
    .local v1, "bytesRead":J
    nop

    .line 206
    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1a

    .line 207
    iget-boolean v5, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    if-nez v5, :cond_19

    .line 208
    iput-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    .line 209
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$cacheBody:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 211
    :cond_19
    return-wide v3

    .line 214
    :cond_1a
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$cacheBody:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v4

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v5

    sub-long/2addr v5, v1

    move-object v3, p1

    move-wide v7, v1

    invoke-virtual/range {v3 .. v8}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 215
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$cacheBody:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    .line 216
    return-wide v1

    .line 198
    .end local v1    # "bytesRead":J
    :catch_30
    move-exception v1

    .line 199
    .local v1, "e":Ljava/io/IOException;
    iget-boolean v2, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    if-nez v2, :cond_3c

    .line 200
    iput-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    .line 201
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Lokhttp3/internal/cache/CacheRequest;->abort()V

    .line 203
    :cond_3c
    throw v1
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 220
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
