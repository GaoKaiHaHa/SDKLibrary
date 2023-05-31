.class final Lrx/internal/operators/OperatorScan$InitialProducer;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InitialProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;",
        "Lrx/Observer",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field emitting:Z

.field error:Ljava/lang/Throwable;

.field missed:Z

.field missedRequested:J

.field volatile producer:Lrx/Producer;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->child:Lrx/Subscriber;

    .line 189
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 190
    new-instance v0, Lrx/internal/util/unsafe/SpscLinkedQueue;

    invoke-direct {v0}, Lrx/internal/util/unsafe/SpscLinkedQueue;-><init>()V

    .line 194
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_10
    iput-object v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->queue:Ljava/util/Queue;

    .line 195
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 196
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 197
    return-void

    .line 192
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_25
    new-instance v0, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;

    invoke-direct {v0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;-><init>()V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_10
.end method


# virtual methods
.method checkTerminated(ZZLrx/Subscriber;)Z
    .registers 7
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber",
            "<-TR;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    .local p3, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    const/4 v1, 0x1

    .line 206
    invoke-virtual {p3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 220
    :goto_7
    return v1

    .line 209
    :cond_8
    if-eqz p1, :cond_18

    .line 210
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->error:Ljava/lang/Throwable;

    .line 211
    .local v0, "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_12

    .line 212
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 215
    :cond_12
    if-eqz p2, :cond_18

    .line 216
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_7

    .line 220
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_18
    const/4 v1, 0x0

    goto :goto_7
.end method

.method emit()V
    .registers 2

    .prologue
    .line 288
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    monitor-enter p0

    .line 289
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->emitting:Z

    if-eqz v0, :cond_a

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missed:Z

    .line 291
    monitor-exit p0

    .line 296
    :goto_9
    return-void

    .line 293
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->emitting:Z

    .line 294
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    .line 295
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emitLoop()V

    goto :goto_9

    .line 294
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method emitLoop()V
    .registers 19

    .prologue
    .line 299
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->child:Lrx/Subscriber;

    .line 300
    .local v2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->queue:Ljava/util/Queue;

    .line 301
    .local v10, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v8

    .line 302
    .local v8, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TR;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 304
    .local v11, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 306
    .local v12, "r":J
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->done:Z

    .line 307
    .local v3, "d":Z
    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    .line 308
    .local v6, "empty":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v2}, Lrx/internal/operators/OperatorScan$InitialProducer;->checkTerminated(ZZLrx/Subscriber;)Z

    move-result v15

    if-eqz v15, :cond_25

    .line 339
    :cond_24
    :goto_24
    return-void

    .line 311
    :cond_25
    const-wide/16 v4, 0x0

    .line 312
    .local v4, "e":J
    :goto_27
    cmp-long v15, v4, v12

    if-eqz v15, :cond_40

    .line 313
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->done:Z

    .line 314
    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .line 315
    .local v9, "o":Ljava/lang/Object;
    if-nez v9, :cond_64

    const/4 v6, 0x1

    .line 316
    :goto_36
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v2}, Lrx/internal/operators/OperatorScan$InitialProducer;->checkTerminated(ZZLrx/Subscriber;)Z

    move-result v15

    if-nez v15, :cond_24

    .line 319
    if-eqz v6, :cond_66

    .line 332
    .end local v9    # "o":Ljava/lang/Object;
    :cond_40
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-eqz v15, :cond_53

    const-wide v16, 0x7fffffffffffffffL

    cmp-long v15, v12, v16

    if-eqz v15, :cond_53

    .line 333
    invoke-static {v11, v4, v5}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v12

    .line 336
    :cond_53
    monitor-enter p0

    .line 337
    :try_start_54
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->missed:Z

    if-nez v15, :cond_77

    .line 338
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->emitting:Z

    .line 339
    monitor-exit p0

    goto :goto_24

    .line 342
    :catchall_61
    move-exception v15

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_54 .. :try_end_63} :catchall_61

    throw v15

    .line 315
    .restart local v9    # "o":Ljava/lang/Object;
    :cond_64
    const/4 v6, 0x0

    goto :goto_36

    .line 322
    :cond_66
    invoke-virtual {v8, v9}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 324
    .local v14, "v":Ljava/lang/Object;, "TR;"
    :try_start_6a
    invoke-virtual {v2, v14}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6d} :catch_72

    .line 329
    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    .line 330
    goto :goto_27

    .line 325
    :catch_72
    move-exception v7

    .line 326
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-static {v7, v2, v14}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_24

    .line 341
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v9    # "o":Ljava/lang/Object;
    .end local v14    # "v":Ljava/lang/Object;, "TR;"
    :cond_77
    const/4 v15, 0x0

    :try_start_78
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->missed:Z

    .line 342
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_61

    goto :goto_14
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 232
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->done:Z

    .line 233
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    .line 234
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 225
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->error:Ljava/lang/Throwable;

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->done:Z

    .line 227
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    .line 228
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->queue:Ljava/util/Queue;

    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    .line 203
    return-void
.end method

.method public request(J)V
    .registers 12
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    const-wide/16 v4, 0x0

    .line 238
    cmp-long v3, p1, v4

    if-gez v3, :cond_1f

    .line 239
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "n >= required but it was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_1f
    cmp-long v3, p1, v4

    if-eqz v3, :cond_44

    .line 242
    iget-object v3, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 243
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->producer:Lrx/Producer;

    .line 244
    .local v2, "p":Lrx/Producer;
    if-nez v2, :cond_3c

    .line 246
    iget-object v4, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v4

    .line 247
    :try_start_2f
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->producer:Lrx/Producer;

    .line 248
    if-nez v2, :cond_3b

    .line 249
    iget-wide v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missedRequested:J

    .line 250
    .local v0, "mr":J
    invoke-static {v0, v1, p1, p2}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missedRequested:J

    .line 252
    .end local v0    # "mr":J
    :cond_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_45

    .line 254
    :cond_3c
    if-eqz v2, :cond_41

    .line 255
    invoke-interface {v2, p1, p2}, Lrx/Producer;->request(J)V

    .line 257
    :cond_41
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    .line 259
    .end local v2    # "p":Lrx/Producer;
    :cond_44
    return-void

    .line 252
    .restart local v2    # "p":Lrx/Producer;
    :catchall_45
    move-exception v3

    :try_start_46
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v3
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 10
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    const-wide/16 v6, 0x0

    .line 262
    if-nez p1, :cond_a

    .line 263
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 267
    :cond_a
    iget-object v3, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v3

    .line 268
    :try_start_d
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->producer:Lrx/Producer;

    if-eqz v2, :cond_1c

    .line 269
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t set more than one Producer!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_19

    throw v2

    .line 271
    :cond_1c
    :try_start_1c
    iget-wide v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missedRequested:J

    .line 274
    .local v0, "mr":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2a

    .line 275
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    .line 277
    :cond_2a
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missedRequested:J

    .line 278
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->producer:Lrx/Producer;

    .line 279
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_19

    .line 281
    cmp-long v2, v0, v6

    if-lez v2, :cond_38

    .line 282
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    .line 284
    :cond_38
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    .line 285
    return-void
.end method
