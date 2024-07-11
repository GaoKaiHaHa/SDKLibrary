.class public abstract Landroidx/test/espresso/core/internal/deps/aidl/BaseStub;
.super Landroid/os/Binder;
.source "BaseStub.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field private static globalInterceptor:Landroidx/test/espresso/core/internal/deps/aidl/TransactionInterceptor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const/4 v0, 0x0

    sput-object v0, Landroidx/test/espresso/core/internal/deps/aidl/BaseStub;->globalInterceptor:Landroidx/test/espresso/core/internal/deps/aidl/TransactionInterceptor;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    invoke-virtual {p0, p0, p1}, Landroidx/test/espresso/core/internal/deps/aidl/BaseStub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static declared-synchronized installTransactionInterceptorPackagePrivate(Landroidx/test/espresso/core/internal/deps/aidl/TransactionInterceptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interceptor"
        }
    .end annotation

    const-class v0, Landroidx/test/espresso/core/internal/deps/aidl/BaseStub;

    monitor-enter v0

    .line 31
    if-eqz p0, :cond_17

    .line 34
    :try_start_5
    sget-object v1, Landroidx/test/espresso/core/internal/deps/aidl/BaseStub;->globalInterceptor:Landroidx/test/espresso/core/internal/deps/aidl/TransactionInterceptor;

    if-nez v1, :cond_d

    .line 40
    sput-object p0, Landroidx/test/espresso/core/internal/deps/aidl/BaseStub;->globalInterceptor:Landroidx/test/espresso/core/internal/deps/aidl/TransactionInterceptor;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_15

    .line 41
    monitor-exit v0

    return-void

    .line 38
    :cond_d
    :try_start_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Duplicate TransactionInterceptor installation."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :catchall_15
    move-exception p0

    goto :goto_1f

    .line 32
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null interceptor"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_15

    .line 30
    :goto_1f
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 49
    return-object p0
.end method

.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const/4 p1, 0x0

    return p1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/test/espresso/core/internal/deps/aidl/BaseStub;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 73
    const/4 p1, 0x1

    return p1

    .line 77
    :cond_8
    sget-object v0, Landroidx/test/espresso/core/internal/deps/aidl/BaseStub;->globalInterceptor:Landroidx/test/espresso/core/internal/deps/aidl/TransactionInterceptor;

    if-nez v0, :cond_11

    .line 78
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/test/espresso/core/internal/deps/aidl/BaseStub;->dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 80
    :cond_11
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroidx/test/espresso/core/internal/deps/aidl/TransactionInterceptor;->interceptTransaction(Landroidx/test/espresso/core/internal/deps/aidl/BaseStub;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method

.method protected routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const v0, 0xffffff

    if-le p1, v0, :cond_a

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 65
    :cond_a
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/aidl/BaseStub;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    const/4 p1, 0x0

    return p1
.end method