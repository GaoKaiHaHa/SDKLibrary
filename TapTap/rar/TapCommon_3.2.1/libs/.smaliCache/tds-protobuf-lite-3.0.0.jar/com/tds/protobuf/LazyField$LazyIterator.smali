.class Lcom/tds/protobuf/LazyField$LazyIterator;
.super Ljava/lang/Object;
.source "LazyField.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/LazyField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/tds/protobuf/LazyField$LazyIterator;, "Lcom/tds/protobuf/LazyField$LazyIterator<TK;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/tds/protobuf/LazyField$LazyIterator;->iterator:Ljava/util/Iterator;

    .line 132
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 136
    .local p0, "this":Lcom/tds/protobuf/LazyField$LazyIterator;, "Lcom/tds/protobuf/LazyField$LazyIterator<TK;>;"
    iget-object v0, p0, Lcom/tds/protobuf/LazyField$LazyIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 127
    .local p0, "this":Lcom/tds/protobuf/LazyField$LazyIterator;, "Lcom/tds/protobuf/LazyField$LazyIterator<TK;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyField$LazyIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/tds/protobuf/LazyField$LazyIterator;, "Lcom/tds/protobuf/LazyField$LazyIterator<TK;>;"
    iget-object v0, p0, Lcom/tds/protobuf/LazyField$LazyIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/tds/protobuf/LazyField;

    if-eqz v1, :cond_17

    .line 144
    new-instance v1, Lcom/tds/protobuf/LazyField$LazyEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/tds/protobuf/LazyField$LazyEntry;-><init>(Ljava/util/Map$Entry;Lcom/tds/protobuf/LazyField$1;)V

    return-object v1

    .line 146
    :cond_17
    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 151
    .local p0, "this":Lcom/tds/protobuf/LazyField$LazyIterator;, "Lcom/tds/protobuf/LazyField$LazyIterator<TK;>;"
    iget-object v0, p0, Lcom/tds/protobuf/LazyField$LazyIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 152
    return-void
.end method