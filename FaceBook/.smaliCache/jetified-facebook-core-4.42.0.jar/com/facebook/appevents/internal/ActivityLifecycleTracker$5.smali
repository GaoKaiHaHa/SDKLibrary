.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityName:Ljava/lang/String;

.field final synthetic val$currentTime:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .registers 4

    .line 274
    iput-wide p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$currentTime:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$activityName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 277
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    if-nez v0, :cond_15

    .line 280
    new-instance v0, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$currentTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    # setter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$302(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    .line 283
    :cond_15
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$currentTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/appevents/internal/SessionInfo;->setSessionLastEventTime(Ljava/lang/Long;)V

    .line 284
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$600()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_4d

    .line 288
    new-instance v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5$1;

    invoke-direct {v0, p0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5$1;-><init>(Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;)V

    .line 306
    .local v0, "task":Ljava/lang/Runnable;
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFutureLock:Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$700()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 307
    :try_start_36
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$900()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 309
    # invokes: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getSessionTimeoutInSeconds()I
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$500()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 307
    invoke-interface {v2, v0, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    # setter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$802(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 311
    monitor-exit v1

    goto :goto_4d

    :catchall_4a
    move-exception v2

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_4a

    throw v2

    .line 315
    .end local v0    # "task":Ljava/lang/Runnable;
    :cond_4d
    :goto_4d
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentActivityAppearTime:J
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$1000()J

    move-result-wide v0

    .line 316
    .local v0, "appearTime":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_5d

    iget-wide v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$currentTime:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 319
    .local v2, "timeSpentOnActivityInSeconds":J
    :cond_5d
    iget-object v4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$activityName:Ljava/lang/String;

    invoke-static {v4, v2, v3}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logActivityTimeSpentEvent(Ljava/lang/String;J)V

    .line 324
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/appevents/internal/SessionInfo;->writeSessionToDisk()V

    .line 325
    return-void
.end method
