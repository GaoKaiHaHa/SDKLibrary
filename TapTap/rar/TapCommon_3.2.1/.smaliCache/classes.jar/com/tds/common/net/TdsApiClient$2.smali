.class Lcom/tds/common/net/TdsApiClient$2;
.super Ljava/lang/Object;
.source "TdsApiClient.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/net/TdsApiClient;->getAsync(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tds/common/reactor/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/net/TdsApiClient;

.field final synthetic val$headers:Ljava/util/Map;

.field final synthetic val$queries:Ljava/util/Map;

.field final synthetic val$typeRef:Lcom/tds/common/net/json/TypeRef;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tds/common/net/TdsApiClient;Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .param p1, "this$0"    # Lcom/tds/common/net/TdsApiClient;

    .line 151
    iput-object p1, p0, Lcom/tds/common/net/TdsApiClient$2;->this$0:Lcom/tds/common/net/TdsApiClient;

    iput-object p2, p0, Lcom/tds/common/net/TdsApiClient$2;->val$typeRef:Lcom/tds/common/net/json/TypeRef;

    iput-object p3, p0, Lcom/tds/common/net/TdsApiClient$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/tds/common/net/TdsApiClient$2;->val$queries:Ljava/util/Map;

    iput-object p5, p0, Lcom/tds/common/net/TdsApiClient$2;->val$headers:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 155
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/net/TdsApiClient$2;->this$0:Lcom/tds/common/net/TdsApiClient;

    iget-object v1, p0, Lcom/tds/common/net/TdsApiClient$2;->val$typeRef:Lcom/tds/common/net/json/TypeRef;

    iget-object v2, p0, Lcom/tds/common/net/TdsApiClient$2;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/tds/common/net/TdsApiClient$2;->val$queries:Ljava/util/Map;

    iget-object v4, p0, Lcom/tds/common/net/TdsApiClient$2;->val$headers:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tds/common/net/TdsApiClient;->get(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_14
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    goto :goto_18

    .line 159
    :catchall_12
    move-exception v0

    goto :goto_1d

    .line 156
    :catch_14
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    :try_start_15
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_12

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 160
    nop

    .line 161
    return-void

    .line 159
    :goto_1d
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 160
    throw v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 151
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/net/TdsApiClient$2;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method