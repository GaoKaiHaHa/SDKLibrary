.class Lcom/ss/android/socialbase/downloader/depend/v$a$a;
.super Ljava/lang/Object;
.source "IDownloadForbiddenAidlHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/v$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/depend/v;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/depend/v$a$a;->b:Landroid/os/IBinder;

    .line 79
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/depend/u;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 94
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 95
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/u;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 96
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/depend/v$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 97
    if-nez v2, :cond_37

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/v$a;->a()Lcom/ss/android/socialbase/downloader/depend/v;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 98
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/v$a;->a()Lcom/ss/android/socialbase/downloader/depend/v;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/depend/v;->a(Lcom/ss/android/socialbase/downloader/depend/u;)Z

    move-result p1
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_49

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 98
    return p1

    .line 100
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_49

    if-eqz p1, :cond_41

    move v3, v4

    .line 104
    :cond_41
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    nop

    .line 107
    return v3

    .line 104
    :catchall_49
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/depend/v$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
