.class public abstract Lcom/sigmob/sdk/base/common/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/os/Handler;

.field protected volatile b:J

.field private volatile c:Z


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/a/c;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(J)V
    .registers 8

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_2c

    move v0, v1

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intervalMillis must be greater than 0. Saw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sigmob/sdk/base/common/utils/v;->a(ZLjava/lang/String;)Z

    iput-wide p1, p0, Lcom/sigmob/sdk/base/common/a/c;->b:J

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/a/c;->c:Z

    if-nez v0, :cond_2b

    iput-boolean v1, p0, Lcom/sigmob/sdk/base/common/a/c;->c:Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/a/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2b
    return-void

    :cond_2c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/a/c;->c:Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/a/c;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .registers 5

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/a/c;->c:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/a/c;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/a/c;->a:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/sigmob/sdk/base/common/a/c;->b:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    return-void
.end method
