.class public Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;


# instance fields
.field private final cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

.field private final keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    iput-object p2, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->keyComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-interface {v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-interface {v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->keys()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 8

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_4
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-interface {v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->keys()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->keyComparator:Ljava/util/Comparator;

    invoke-interface {v4, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_e

    :goto_22
    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-interface {v1, v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    :cond_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_33

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    :cond_31
    move-object v0, v1

    goto :goto_22

    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method