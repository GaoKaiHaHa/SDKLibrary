.class Lcom/kwad/sdk/core/report/c$2;
.super Lcom/kwad/sdk/core/network/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/report/c;->a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicBoolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/i<",
        "TR;",
        "Lcom/kwad/sdk/core/response/model/BatchReportResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/kwad/sdk/core/report/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/report/c;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/report/c$2;->b:Lcom/kwad/sdk/core/report/c;

    iput-object p2, p0, Lcom/kwad/sdk/core/report/c$2;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/BatchReportResult;
    .registers 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/kwad/sdk/core/response/model/BatchReportResult;

    invoke-direct {p1}, Lcom/kwad/sdk/core/response/model/BatchReportResult;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/response/model/BatchReportResult;->parseJson(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method protected synthetic b(Ljava/lang/String;)Lcom/kwad/sdk/core/network/BaseResultData;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/report/c$2;->a(Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/BatchReportResult;

    move-result-object p1

    return-object p1
.end method

.method protected b()Lcom/kwad/sdk/core/network/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c$2;->b:Lcom/kwad/sdk/core/report/c;

    iget-object v1, p0, Lcom/kwad/sdk/core/report/c$2;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/report/c;->a(Ljava/util/List;)Lcom/kwad/sdk/core/network/g;

    move-result-object v0

    return-object v0
.end method
