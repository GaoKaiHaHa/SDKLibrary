.class public Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/LinearLayoutManager;
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
            "Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnchorLayoutFromEnd:Z

.field mAnchorOffset:I

.field mAnchorPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2458
    new-instance v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState$1;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2424
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2430
    return-void
.end method

.method public constructor <init>(Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;)V
    .registers 3
    .param p1, "other"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 2432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2433
    iget v0, p1, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2434
    iget v0, p1, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2435
    iget-boolean v0, p1, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2436
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 2448
    const/4 v0, 0x0

    return v0
.end method

.method hasValidAnchor()Z
    .registers 2

    .line 2439
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method invalidateAnchor()V
    .registers 2

    .line 2443
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2444
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2453
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2454
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2455
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2456
    return-void
.end method
