.class Lcom/sigmob/sdk/base/models/PointEntity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/models/PointEntity;->insertToDB(Lcom/sigmob/sdk/base/a/m;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sigmob/sdk/base/models/PointEntity;

.field final synthetic val$execCallBack:Lcom/sigmob/sdk/base/a/m;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/models/PointEntity;Lcom/sigmob/sdk/base/a/m;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/PointEntity$1;->this$0:Lcom/sigmob/sdk/base/models/PointEntity;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/PointEntity$1;->val$execCallBack:Lcom/sigmob/sdk/base/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/PointEntity$1;->val$execCallBack:Lcom/sigmob/sdk/base/a/m;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/PointEntity$1;->val$execCallBack:Lcom/sigmob/sdk/base/a/m;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/a/m;->onFailed(Ljava/lang/Throwable;)V

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seq_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/PointEntity$1;->this$0:Lcom/sigmob/sdk/base/models/PointEntity;

    # getter for: Lcom/sigmob/sdk/base/models/PointEntity;->seq_id:Ljava/lang/String;
    invoke-static {v1}, Lcom/sigmob/sdk/base/models/PointEntity;->access$000(Lcom/sigmob/sdk/base/models/PointEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "insert success!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/PointEntity$1;->val$execCallBack:Lcom/sigmob/sdk/base/a/m;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/PointEntity$1;->val$execCallBack:Lcom/sigmob/sdk/base/a/m;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/a/m;->onSuccess()V

    :cond_2b
    return-void
.end method