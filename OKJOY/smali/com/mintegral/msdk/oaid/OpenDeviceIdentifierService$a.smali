.class public abstract Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService$a;
.super Landroid/os/Binder;
.source "OpenDeviceIdentifierService.java"

# interfaces
.implements Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;
    .registers 3

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 28
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService$a$a;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 37
    sparse-switch p1, :sswitch_data_34

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 39
    :sswitch_9
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService$a;->getOaid()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 45
    :sswitch_19
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService$a;->isOaidTrackLimited()Z

    move-result v0

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 48
    if-eqz v0, :cond_2c

    move v0, v1

    :goto_28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_2c
    const/4 v0, 0x0

    goto :goto_28

    .line 51
    :sswitch_2e
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 37
    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_19
        0x5f4e5446 -> :sswitch_2e
    .end sparse-switch
.end method
