.class public Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
.super Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field mSpanIndex:I

.field mSpanSize:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1370
    invoke-direct {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 1361
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1363
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1371
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1366
    invoke-direct {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1361
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1363
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1367
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1378
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1361
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1363
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1379
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1374
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1361
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1363
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1375
    return-void
.end method

.method public constructor <init>(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1382
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 1361
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1363
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1383
    return-void
.end method


# virtual methods
.method public getSpanIndex()I
    .registers 2

    .line 1400
    iget v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return v0
.end method

.method public getSpanSize()I
    .registers 2

    .line 1410
    iget v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return v0
.end method
