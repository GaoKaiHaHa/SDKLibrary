.class final Lcom/sigmob/sdk/base/common/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Error;)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sigmob/sdk/base/common/d$3$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/common/d$3$1;-><init>(Lcom/sigmob/sdk/base/common/d$3;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4

    if-eqz p1, :cond_1c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1c

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/d;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1c
    :goto_1c
    return-void
.end method
