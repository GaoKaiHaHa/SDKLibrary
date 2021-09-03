.class public Ltds/androidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;
.super Ljava/lang/Object;
.source "ViewTypeStorage.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/ViewTypeStorage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/ViewTypeStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedIdRangeViewTypeStorage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;
    }
.end annotation


# instance fields
.field mGlobalTypeToWrapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public createViewTypeWrapper(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)Ltds/androidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;
    .registers 3
    .param p1, "wrapper"    # Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 72
    new-instance v0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;

    invoke-direct {v0, p0, p1}, Ltds/androidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;-><init>(Ltds/androidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)V

    return-object v0
.end method

.method public getWrapperForGlobalType(I)Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    .registers 6
    .param p1, "globalViewType"    # I

    .line 58
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 60
    .local v0, "nestedAdapterWrappers":Ljava/util/List;, "Ljava/util/List<Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;>;"
    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 65
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    return-object v1

    .line 61
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find the wrapper for global view type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method removeWrapper(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)V
    .registers 5
    .param p1, "wrapper"    # Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 76
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_26

    .line 77
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 78
    .local v1, "wrappers":Ljava/util/List;, "Ljava/util/List<Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 79
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 80
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 76
    .end local v1    # "wrappers":Ljava/util/List;, "Ljava/util/List<Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;>;"
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 84
    .end local v0    # "i":I
    :cond_26
    return-void
.end method
