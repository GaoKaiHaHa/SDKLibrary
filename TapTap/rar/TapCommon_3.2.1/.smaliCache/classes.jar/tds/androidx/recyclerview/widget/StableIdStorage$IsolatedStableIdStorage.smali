.class public Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;
.super Ljava/lang/Object;
.source "StableIdStorage.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/StableIdStorage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/StableIdStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsolatedStableIdStorage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;
    }
.end annotation


# instance fields
.field mNextStableId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;->mNextStableId:J

    return-void
.end method


# virtual methods
.method public createStableIdLookup()Ltds/androidx/recyclerview/widget/StableIdStorage$StableIdLookup;
    .registers 2

    .line 89
    new-instance v0, Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;-><init>(Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;)V

    return-object v0
.end method

.method obtainId()J
    .registers 5

    .line 83
    iget-wide v0, p0, Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;->mNextStableId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;->mNextStableId:J

    return-wide v0
.end method
