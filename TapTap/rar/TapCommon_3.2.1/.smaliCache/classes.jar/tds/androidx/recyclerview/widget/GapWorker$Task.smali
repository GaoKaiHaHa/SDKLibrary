.class Ltds/androidx/recyclerview/widget/GapWorker$Task;
.super Ljava/lang/Object;
.source "GapWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Task"
.end annotation


# instance fields
.field public distanceToItem:I

.field public immediate:Z

.field public position:I

.field public view:Ltds/androidx/recyclerview/widget/RecyclerView;

.field public viewVelocity:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    .line 47
    iput v0, p0, Ltds/androidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 48
    iput v0, p0, Ltds/androidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/GapWorker$Task;->view:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 50
    iput v0, p0, Ltds/androidx/recyclerview/widget/GapWorker$Task;->position:I

    .line 51
    return-void
.end method
