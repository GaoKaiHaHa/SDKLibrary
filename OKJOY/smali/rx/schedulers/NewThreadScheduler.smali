.class public final Lrx/schedulers/NewThreadScheduler;
.super Lrx/Scheduler;
.source "NewThreadScheduler.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method
