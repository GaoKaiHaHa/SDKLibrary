.class public final Lokjoy/h/m;
.super Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;
.source ""


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p2, p0, Lokjoy/h/m;->a:Ljava/lang/String;

    iput-object p3, p0, Lokjoy/h/m;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public buildRequestParams()Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;
    .registers 4

    invoke-super {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->buildRequestParams()Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;

    move-result-object v0

    iget-object v1, p0, Lokjoy/h/m;->a:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lokjoy/h/m;->b:Ljava/lang/String;

    const-string v2, "username"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "https://sdk.ok-joy.com/common/?ct=user&ac=tokenLogin"

    return-object v0
.end method
