.class Lcom/umeng/commonsdk/statistics/internal/c$1;
.super Ljava/lang/Object;
.source "NetworkHelper.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/statistics/internal/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/statistics/internal/c;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/statistics/internal/c;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c$1;->a:Lcom/umeng/commonsdk/statistics/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 197
    invoke-static {}, Lcom/umeng/commonsdk/config/FieldManager;->b()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 199
    invoke-static {}, Lcom/umeng/commonsdk/config/FieldManager;->a()Lcom/umeng/commonsdk/config/FieldManager;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/internal/c$1;->a:Lcom/umeng/commonsdk/statistics/internal/c;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/c;->a(Lcom/umeng/commonsdk/statistics/internal/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/umeng/commonsdk/config/FieldManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> apply imprint change and exit: key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; value= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MobclickRT"

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c$1;->a:Lcom/umeng/commonsdk/statistics/internal/c;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/c;->a(Lcom/umeng/commonsdk/statistics/internal/c;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x8014

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/c$1;->a:Lcom/umeng/commonsdk/statistics/internal/c;

    .line 203
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/c;->a(Lcom/umeng/commonsdk/statistics/internal/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v0

    const/4 v1, 0x0

    .line 202
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 204
    return-void

    .line 207
    :cond_51
    return-void
.end method
