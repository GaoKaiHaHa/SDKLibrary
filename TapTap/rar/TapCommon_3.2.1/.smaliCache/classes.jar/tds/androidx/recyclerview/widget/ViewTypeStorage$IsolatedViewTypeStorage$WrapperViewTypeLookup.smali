.class Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;
.super Ljava/lang/Object;
.source "ViewTypeStorage.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrapperViewTypeLookup"
.end annotation


# instance fields
.field private mGlobalToLocalMapping:Landroid/util/SparseIntArray;

.field private mLocalToGlobalMapping:Landroid/util/SparseIntArray;

.field final mWrapper:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

.field final synthetic this$0:Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)V
    .registers 5
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;
    .param p2, "wrapper"    # Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 164
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->this$0:Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mLocalToGlobalMapping:Landroid/util/SparseIntArray;

    .line 161
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mGlobalToLocalMapping:Landroid/util/SparseIntArray;

    .line 165
    iput-object p2, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 166
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 193
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->this$0:Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;->removeWrapper(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)V

    .line 194
    return-void
.end method

.method public globalToLocal(I)I
    .registers 6
    .param p1, "globalType"    # I

    .line 183
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mGlobalToLocalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 184
    .local v0, "index":I
    if-ltz v0, :cond_f

    .line 188
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mGlobalToLocalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    return v1

    .line 185
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requested global type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not belong to the adapter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public localToGlobal(I)I
    .registers 5
    .param p1, "localType"    # I

    .line 170
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mLocalToGlobalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 171
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_10

    .line 172
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mLocalToGlobalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    return v1

    .line 175
    :cond_10
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->this$0:Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-virtual {v1, v2}, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;->obtainViewType(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)I

    move-result v1

    .line 176
    .local v1, "globalType":I
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mLocalToGlobalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mGlobalToLocalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 178
    return v1
.end method
