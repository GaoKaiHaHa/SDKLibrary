.class public Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel$OkJoyDataModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OkJoyDataModel"
.end annotation


# instance fields
.field public offline:Ljava/lang/String;

.field public show:Ljava/lang/String;

.field public final synthetic this$0:Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel$OkJoyDataModel;->this$0:Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffline()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel$OkJoyDataModel;->offline:Ljava/lang/String;

    return-object v0
.end method

.method public getShow()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel$OkJoyDataModel;->show:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel$OkJoyDataModel;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setOffline(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel$OkJoyDataModel;->offline:Ljava/lang/String;

    return-void
.end method

.method public setShow(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel$OkJoyDataModel;->show:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyAntiAdditionRemainTimeResponseModel$OkJoyDataModel;->time:Ljava/lang/String;

    return-void
.end method
