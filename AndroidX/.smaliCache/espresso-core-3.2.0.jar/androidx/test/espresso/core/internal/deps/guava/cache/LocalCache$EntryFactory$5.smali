.class final enum Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$5;
.super Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 490
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;-><init>(Ljava/lang/String;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$1;)V

    return-void
.end method


# virtual methods
.method newEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "segment",
            "key",
            "hash",
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment<",
            "TK;TV;>;TK;I",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 494
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakEntry;

    iget-object p1, p1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    return-object v0
.end method
