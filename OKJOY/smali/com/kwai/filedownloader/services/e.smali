.class public Lcom/kwai/filedownloader/services/e;
.super Lcom/kwai/filedownloader/e0/b$a;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/services/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/services/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwai/filedownloader/services/g;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kwai/filedownloader/services/FileDownloadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lcom/kwai/filedownloader/services/g;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kwai/filedownloader/services/FileDownloadService;",
            ">;",
            "Lcom/kwai/filedownloader/services/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/kwai/filedownloader/e0/b$a;-><init>()V

    iput-object p1, p0, Lcom/kwai/filedownloader/services/e;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/kwai/filedownloader/services/e;->a:Lcom/kwai/filedownloader/services/g;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/services/e;->a:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/g;->a()V

    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/e;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/kwai/filedownloader/services/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_15
    return-void
.end method

.method public a(Landroid/content/Intent;II)V
    .registers 5

    invoke-static {}, Lcom/kwai/filedownloader/m;->b()Lcom/kwai/filedownloader/services/e$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/kwai/filedownloader/services/e$a;->a(Lcom/kwai/filedownloader/services/e;)V

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/e0/a;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/f0/b;Z)V
    .registers 20

    iget-object v0, p0, Lcom/kwai/filedownloader/services/e;->a:Lcom/kwai/filedownloader/services/g;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/kwai/filedownloader/services/g;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/f0/b;Z)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/e;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/kwai/filedownloader/services/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1}, Landroid/app/Service;->stopForeground(Z)V

    :cond_15
    return-void
.end method

.method public a(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/e;->a:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->a(I)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/e;->a:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/services/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(I)B
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/e;->a:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->c(I)B

    move-result v0

    return v0
.end method

.method public b(Lcom/kwai/filedownloader/e0/a;)V
    .registers 2

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/services/e;->a:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/g;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    invoke-static {}, Lcom/kwai/filedownloader/m;->b()Lcom/kwai/filedownloader/services/e$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/services/e$a;->b()V

    return-void
.end method

.method public c(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/e;->a:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->f(I)Z

    move-result v0

    return v0
.end method

.method public d(I)J
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/e;->a:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->d(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/services/e;->a:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/g;->c()V

    return-void
.end method

.method public e(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/e;->a:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->g(I)Z

    move-result v0

    return v0
.end method

.method public f(I)J
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/e;->a:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->b(I)J

    move-result-wide v0

    return-wide v0
.end method