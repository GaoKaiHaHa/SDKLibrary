.class public Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;
.super Ltds/androidx/customview/view/AbsSavedState;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLayoutState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12512
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState$1;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState$1;-><init>()V

    sput-object v0, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 12490
    invoke-direct {p0, p1, p2}, Ltds/androidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 12491
    if-eqz p2, :cond_7

    move-object v0, p2

    goto :goto_d

    :cond_7
    const-class v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12492
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 12491
    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    .line 12493
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 12499
    invoke-direct {p0, p1}, Ltds/androidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 12500
    return-void
.end method


# virtual methods
.method copyFrom(Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;)V
    .registers 3
    .param p1, "other"    # Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    .line 12509
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    .line 12510
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 12504
    invoke-super {p0, p1, p2}, Ltds/androidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 12505
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 12506
    return-void
.end method
