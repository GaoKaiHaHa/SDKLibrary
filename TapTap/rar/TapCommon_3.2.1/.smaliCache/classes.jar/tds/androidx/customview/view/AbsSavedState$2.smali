.class final Ltds/androidx/customview/view/AbsSavedState$2;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/customview/view/AbsSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Ltds/androidx/customview/view/AbsSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Ltds/androidx/customview/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;)Ltds/androidx/customview/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 90
    invoke-virtual {p0, p1, p2}, Ltds/androidx/customview/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ltds/androidx/customview/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltds/androidx/customview/view/AbsSavedState;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltds/androidx/customview/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ltds/androidx/customview/view/AbsSavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ltds/androidx/customview/view/AbsSavedState;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 94
    .local v0, "superState":Landroid/os/Parcelable;
    if-nez v0, :cond_9

    .line 97
    sget-object v1, Ltds/androidx/customview/view/AbsSavedState;->EMPTY_STATE:Ltds/androidx/customview/view/AbsSavedState;

    return-object v1

    .line 95
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "superState must be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Ltds/androidx/customview/view/AbsSavedState$2;->newArray(I)[Ltds/androidx/customview/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ltds/androidx/customview/view/AbsSavedState;
    .registers 3
    .param p1, "size"    # I

    .line 107
    new-array v0, p1, [Ltds/androidx/customview/view/AbsSavedState;

    return-object v0
.end method