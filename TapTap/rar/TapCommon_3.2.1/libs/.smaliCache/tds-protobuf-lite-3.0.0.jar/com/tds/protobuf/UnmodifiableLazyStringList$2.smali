.class Lcom/tds/protobuf/UnmodifiableLazyStringList$2;
.super Ljava/lang/Object;
.source "UnmodifiableLazyStringList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/protobuf/UnmodifiableLazyStringList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tds/protobuf/UnmodifiableLazyStringList;


# direct methods
.method constructor <init>(Lcom/tds/protobuf/UnmodifiableLazyStringList;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/protobuf/UnmodifiableLazyStringList;

    .line 165
    iput-object p1, p0, Lcom/tds/protobuf/UnmodifiableLazyStringList$2;->this$0:Lcom/tds/protobuf/UnmodifiableLazyStringList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    # getter for: Lcom/tds/protobuf/UnmodifiableLazyStringList;->list:Lcom/tds/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/tds/protobuf/UnmodifiableLazyStringList;->access$000(Lcom/tds/protobuf/UnmodifiableLazyStringList;)Lcom/tds/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/tds/protobuf/LazyStringList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/UnmodifiableLazyStringList$2;->iter:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/tds/protobuf/UnmodifiableLazyStringList$2;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 165
    invoke-virtual {p0}, Lcom/tds/protobuf/UnmodifiableLazyStringList$2;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/tds/protobuf/UnmodifiableLazyStringList$2;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
