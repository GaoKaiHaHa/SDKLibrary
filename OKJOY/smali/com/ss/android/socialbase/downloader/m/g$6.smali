.class final Lcom/ss/android/socialbase/downloader/m/g$6;
.super Lcom/ss/android/socialbase/downloader/d/h$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/v;)Lcom/ss/android/socialbase/downloader/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/v;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/v;)V
    .registers 2

    .prologue
    .line 482
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$6;->a:Lcom/ss/android/socialbase/downloader/d/v;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$6;->a:Lcom/ss/android/socialbase/downloader/d/v;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/v;->a()Z

    move-result v0

    return v0
.end method
