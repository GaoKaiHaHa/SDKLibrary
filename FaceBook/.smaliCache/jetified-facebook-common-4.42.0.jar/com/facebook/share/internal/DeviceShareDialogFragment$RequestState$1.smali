.class final Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState$1;
.super Ljava/lang/Object;
.source "DeviceShareDialogFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 299
    new-instance v0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    invoke-direct {v0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 296
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    .registers 3
    .param p1, "size"    # I

    .line 304
    new-array v0, p1, [Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 296
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState$1;->newArray(I)[Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    move-result-object p1

    return-object p1
.end method