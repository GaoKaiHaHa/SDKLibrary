.class public abstract Lcom/ss/android/socialbase/downloader/d/s$a;
.super Landroid/os/Binder;
.source "IDownloadForbiddenAidlHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/d/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/d/s$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/d/s$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/d/s;
    .registers 3

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/d/s;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/ss/android/socialbase/downloader/d/s;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/d/s$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/d/s$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_2c

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 42
    :sswitch_9
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/d/r$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/d/r;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/d/s$a;->a(Lcom/ss/android/socialbase/downloader/d/r;)Z

    move-result v0

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v0, :cond_2a

    move v0, v1

    :goto_26
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_2a
    const/4 v0, 0x0

    goto :goto_26

    .line 38
    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
