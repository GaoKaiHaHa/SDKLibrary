.class Lcom/kwad/sdk/c/e/b/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/c/e/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/e/b/f;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/e/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/e/b/f$a;->a:Lcom/kwad/sdk/c/e/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string v0, "OppoDeviceIDHelper"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/f$a;->a:Lcom/kwad/sdk/c/e/b/f;

    invoke-static {v0}, Lcom/kwad/sdk/c/e/b/f;->a(Lcom/kwad/sdk/c/e/b/f;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_10
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
