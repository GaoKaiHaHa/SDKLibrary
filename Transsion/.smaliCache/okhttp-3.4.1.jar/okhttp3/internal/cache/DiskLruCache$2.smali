.class Lokhttp3/internal/cache/DiskLruCache$2;
.super Lokhttp3/internal/cache/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lokio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 311
    const-class v0, Lokhttp3/internal/cache/DiskLruCache;

    return-void
.end method

.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokio/Sink;)V
    .registers 3
    .param p1, "this$0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p2, "delegate"    # Lokio/Sink;

    .line 311
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$2;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0, p2}, Lokhttp3/internal/cache/FaultHidingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .registers 4
    .param p1, "e"    # Ljava/io/IOException;

    .line 313
    nop

    .line 314
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$2;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x1

    # setter for: Lokhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z
    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->access$1002(Lokhttp3/internal/cache/DiskLruCache;Z)Z

    .line 315
    return-void
.end method
