.class Lcom/bytedance/sdk/adnet/core/d$a;
.super Ljava/lang/Object;
.source "CacheDispatcher.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/Request$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/core/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bytedance/sdk/adnet/core/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/core/d;)V
    .registers 3

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/d$a;->a:Ljava/util/Map;

    .line 240
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/d$a;->b:Lcom/bytedance/sdk/adnet/core/d;

    .line 241
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/core/d$a;Lcom/bytedance/sdk/adnet/core/Request;)Z
    .registers 3

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/d$a;->b(Lcom/bytedance/sdk/adnet/core/Request;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized b(Lcom/bytedance/sdk/adnet/core/Request;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 307
    monitor-enter p0

    :try_start_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 310
    iget-object v3, p0, Lcom/bytedance/sdk/adnet/core/d$a;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 312
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d$a;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 313
    if-nez v0, :cond_1e

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    :cond_1e
    const-string v3, "waiting-for-response"

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 317
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v3, p0, Lcom/bytedance/sdk/adnet/core/d$a;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/p;->a:Z

    if-eqz v0, :cond_3a

    .line 320
    const-string v0, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/bytedance/sdk/adnet/core/p;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_56

    :cond_3a
    move v0, v1

    .line 331
    :cond_3b
    :goto_3b
    monitor-exit p0

    return v0

    .line 326
    :cond_3d
    :try_start_3d
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/d$a;->a:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/core/Request$a;)V

    .line 328
    sget-boolean v1, Lcom/bytedance/sdk/adnet/core/p;->a:Z

    if-eqz v1, :cond_3b

    .line 329
    const-string v1, "new request, sending to network %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lcom/bytedance/sdk/adnet/core/p;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_3d .. :try_end_55} :catchall_56

    goto :goto_3b

    .line 307
    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/bytedance/sdk/adnet/core/Request;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 275
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 276
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d$a;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 277
    if-eqz v0, :cond_47

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    .line 278
    sget-boolean v1, Lcom/bytedance/sdk/adnet/core/p;->a:Z

    if-eqz v1, :cond_2f

    .line 279
    const-string v1, "%d waiting requests for cacheKey=%s; resend to network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 281
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 279
    invoke-static {v1, v3}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :cond_2f
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/adnet/core/Request;

    .line 284
    iget-object v3, p0, Lcom/bytedance/sdk/adnet/core/d$a;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/core/Request$a;)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_66

    .line 287
    :try_start_3e
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d$a;->b:Lcom/bytedance/sdk/adnet/core/d;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/core/d;->a(Lcom/bytedance/sdk/adnet/core/d;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_47} :catch_49
    .catchall {:try_start_3e .. :try_end_47} :catchall_66

    .line 296
    :cond_47
    :goto_47
    monitor-exit p0

    return-void

    .line 288
    :catch_49
    move-exception v0

    .line 289
    :try_start_4a
    const-string v1, "Couldn\'t add request to queue. %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/bytedance/sdk/adnet/core/p;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 293
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d$a;->b:Lcom/bytedance/sdk/adnet/core/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/d;->a()V
    :try_end_65
    .catchall {:try_start_4a .. :try_end_65} :catchall_66

    goto :goto_47

    .line 275
    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p2, Lcom/bytedance/sdk/adnet/core/n;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/bytedance/sdk/adnet/core/n;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/face/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 249
    :cond_c
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/d$a;->a(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 268
    :cond_f
    return-void

    .line 252
    :cond_10
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 254
    monitor-enter p0

    .line 255
    :try_start_15
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d$a;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 256
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_54

    .line 257
    if-eqz v0, :cond_f

    .line 258
    sget-boolean v2, Lcom/bytedance/sdk/adnet/core/p;->a:Z

    if-eqz v2, :cond_3a

    .line 259
    const-string v2, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 261
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 259
    invoke-static {v2, v3}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_3a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Request;

    .line 265
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/d$a;->b:Lcom/bytedance/sdk/adnet/core/d;

    invoke-static {v2}, Lcom/bytedance/sdk/adnet/core/d;->b(Lcom/bytedance/sdk/adnet/core/d;)Lcom/bytedance/sdk/adnet/face/c;

    move-result-object v2

    invoke-interface {v2, v0, p2}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/n;)V

    goto :goto_3e

    .line 256
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method
