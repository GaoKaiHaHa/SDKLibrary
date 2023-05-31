.class Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncQueueItem"
.end annotation


# static fields
.field private static sPool:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

.field private static final sPoolLock:Ljava/lang/Object;


# instance fields
.field public arg1:I

.field public arg2:I

.field public arg3:I

.field public arg4:I

.field public arg5:I

.field public data:Ljava/lang/Object;

.field next:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

.field public what:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtainMessage(III)Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .registers 10
    .param p0, "what"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .line 225
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    return-object v0
.end method

.method static obtainMessage(IIIIIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .registers 10
    .param p0, "what"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # I
    .param p4, "arg4"    # I
    .param p5, "arg5"    # I
    .param p6, "data"    # Ljava/lang/Object;

    .line 204
    sget-object v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    sget-object v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-nez v1, :cond_d

    .line 207
    new-instance v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    invoke-direct {v1}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;-><init>()V

    .local v1, "item":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    goto :goto_16

    .line 209
    .end local v1    # "item":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :cond_d
    move-object v2, v1

    .line 210
    .local v2, "item":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget-object v1, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    sput-object v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 211
    const/4 v1, 0x0

    iput-object v1, v2, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-object v1, v2

    .line 213
    .end local v2    # "item":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .restart local v1    # "item":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :goto_16
    iput p0, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    .line 214
    iput p1, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    .line 215
    iput p2, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    .line 216
    iput p3, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg3:I

    .line 217
    iput p4, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg4:I

    .line 218
    iput p5, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg5:I

    .line 219
    iput-object p6, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    .line 220
    monitor-exit v0

    return-object v1

    .line 221
    .end local v1    # "item":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method static obtainMessage(IILjava/lang/Object;)Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .registers 10
    .param p0, "what"    # I
    .param p1, "arg1"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 229
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method recycle()V
    .registers 3

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 192
    const/4 v1, 0x0

    iput v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg5:I

    iput v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg4:I

    iput v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg3:I

    iput v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    iput v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    iput v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    .line 193
    iput-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    .line 194
    sget-object v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_15
    sget-object v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz v1, :cond_1b

    .line 196
    iput-object v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 198
    :cond_1b
    sput-object p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->sPool:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_1f

    throw v1
.end method