.class public abstract Lcom/ss/android/socialbase/downloader/depend/h$a;
.super Landroid/os/Binder;
.source "IDownloadAidlInterceptor.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/depend/h$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlInterceptor"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/depend/h$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/h;
    .registers 3

    .line 34
    if-nez p0, :cond_4

    .line 35
    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_4
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlInterceptor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/depend/h;

    if-eqz v1, :cond_13

    .line 39
    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/h;

    return-object v0

    .line 41
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/depend/h$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/depend/h$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static b()Lcom/ss/android/socialbase/downloader/depend/h;
    .registers 1

    .line 117
    sget-object v0, Lcom/ss/android/socialbase/downloader/depend/h$a$a;->a:Lcom/ss/android/socialbase/downloader/depend/h;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 45
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    nop

    .line 50
    const/4 v0, 0x1

    const-string v1, "com.ss.android.socialbase.downloader.depend.IDownloadAidlInterceptor"

    sparse-switch p1, :sswitch_data_1e

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 54
    :sswitch_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return v0

    .line 59
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/depend/h$a;->a()Z

    move-result p1

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return v0

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method