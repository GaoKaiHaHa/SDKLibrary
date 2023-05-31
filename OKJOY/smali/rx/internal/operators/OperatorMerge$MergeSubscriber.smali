.class final Lrx/internal/operators/OperatorMerge$MergeSubscriber;
.super Lrx/Subscriber;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final delayErrors:Z

.field volatile done:Z

.field emitting:Z

.field volatile errors:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final innerGuard:Ljava/lang/Object;

.field volatile innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<*>;"
        }
    .end annotation
.end field

.field lastId:J

.field lastIndex:I

.field final maxConcurrent:I

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field producer:Lrx/internal/operators/OperatorMerge$MergeProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge$MergeProducer",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field scalarEmissionCount:I

.field final scalarEmissionLimit:I

.field volatile subscriptions:Lrx/subscriptions/CompositeSubscription;

.field uniqueId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 183
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    sput-object v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->EMPTY:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;ZI)V
    .registers 6
    .param p2, "delayErrors"    # Z
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;ZI)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const v1, 0x7fffffff

    .line 189
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 190
    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    .line 191
    iput-boolean p2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    .line 192
    iput p3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->maxConcurrent:I

    .line 193
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerGuard:Ljava/lang/Object;

    .line 195
    sget-object v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->EMPTY:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 196
    if-ne p3, v1, :cond_2a

    .line 197
    iput v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionLimit:I

    .line 198
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 203
    :goto_29
    return-void

    .line 200
    :cond_2a
    const/4 v0, 0x1

    shr-int/lit8 v1, p3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionLimit:I

    .line 201
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    goto :goto_29
.end method

.method private reportError()V
    .registers 4

    .prologue
    .line 266
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 267
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 268
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 272
    :goto_1a
    return-void

    .line 270
    :cond_1b
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method


# virtual methods
.method addInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "inner":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateComposite()Lrx/subscriptions/CompositeSubscription;

    move-result-object v3

    invoke-virtual {v3, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 288
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 289
    :try_start_a
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 290
    .local v0, "a":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    array-length v2, v0

    .line 291
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 292
    .local v1, "b":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    aput-object p1, v1, v2

    .line 294
    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 295
    monitor-exit v4

    .line 296
    return-void

    .line 295
    .end local v0    # "a":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v1    # "b":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v2    # "n":I
    :catchall_1c
    move-exception v3

    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw v3
.end method

.method checkTerminate()Z
    .registers 4

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    const/4 v1, 0x1

    .line 818
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 830
    :goto_9
    return v1

    .line 821
    :cond_a
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 822
    .local v0, "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v2, :cond_24

    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 824
    :try_start_18
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->reportError()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1f

    .line 826
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    goto :goto_9

    :catchall_1f
    move-exception v1

    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    throw v1

    .line 830
    :cond_24
    const/4 v1, 0x0

    goto :goto_9
.end method

.method emit()V
    .registers 2

    .prologue
    .line 567
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    monitor-enter p0

    .line 568
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    if-eqz v0, :cond_a

    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 570
    monitor-exit p0

    .line 575
    :goto_9
    return-void

    .line 572
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 573
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    .line 574
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    goto :goto_9

    .line 573
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method emitEmpty()V
    .registers 5

    .prologue
    .line 256
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    add-int/lit8 v0, v1, 0x1

    .line 257
    .local v0, "produced":I
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionLimit:I

    if-ne v0, v1, :cond_10

    .line 258
    const/4 v1, 0x0

    iput v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    .line 259
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->requestMore(J)V

    .line 263
    :goto_f
    return-void

    .line 261
    :cond_10
    iput v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    goto :goto_f
.end method

.method emitLoop()V
    .registers 33

    .prologue
    .line 580
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    const/16 v23, 0x0

    .line 582
    .local v23, "skipFinal":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    .line 585
    .local v4, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_6
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_106

    move-result v30

    if-eqz v30, :cond_1e

    .line 586
    const/16 v23, 0x1

    .line 804
    if-nez v23, :cond_1a

    .line 805
    monitor-enter p0

    .line 806
    const/16 v30, 0x0

    :try_start_13
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 807
    monitor-exit p0

    .line 810
    :cond_1a
    :goto_1a
    return-void

    .line 807
    :catchall_1b
    move-exception v30

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw v30

    .line 589
    :cond_1e
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    move-object/from16 v26, v0

    .line 591
    .local v26, "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v20

    .line 592
    .local v20, "r":J
    const-wide v30, 0x7fffffffffffffffL

    cmp-long v30, v20, v30

    if-nez v30, :cond_63

    const/16 v28, 0x1

    .line 595
    .local v28, "unbounded":Z
    :goto_39
    const/16 v19, 0x0

    .line 598
    .local v19, "replenishMain":I
    if-eqz v26, :cond_79

    .line 600
    :cond_3d
    const/16 v22, 0x0

    .line 601
    .local v22, "scalarEmission":I
    const/16 v16, 0x0

    .line 602
    :goto_41
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-lez v30, :cond_68

    .line 603
    invoke-interface/range {v26 .. v26}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v16

    .line 605
    .local v16, "o":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z
    :try_end_4e
    .catchall {:try_start_1e .. :try_end_4e} :catchall_106

    move-result v30

    if-eqz v30, :cond_66

    .line 606
    const/16 v23, 0x1

    .line 804
    if-nez v23, :cond_1a

    .line 805
    monitor-enter p0

    .line 806
    const/16 v30, 0x0

    :try_start_58
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 807
    monitor-exit p0

    goto :goto_1a

    :catchall_60
    move-exception v30

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_58 .. :try_end_62} :catchall_60

    throw v30

    .line 592
    .end local v16    # "o":Ljava/lang/Object;
    .end local v19    # "replenishMain":I
    .end local v22    # "scalarEmission":I
    .end local v28    # "unbounded":Z
    :cond_63
    const/16 v28, 0x0

    goto :goto_39

    .line 609
    .restart local v16    # "o":Ljava/lang/Object;
    .restart local v19    # "replenishMain":I
    .restart local v22    # "scalarEmission":I
    .restart local v28    # "unbounded":Z
    :cond_66
    if-nez v16, :cond_b6

    .line 630
    .end local v16    # "o":Ljava/lang/Object;
    :cond_68
    if-lez v22, :cond_71

    .line 631
    if-eqz v28, :cond_114

    .line 632
    const-wide v20, 0x7fffffffffffffffL

    .line 637
    :cond_71
    :goto_71
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-eqz v30, :cond_79

    if-nez v16, :cond_3d

    .line 649
    .end local v22    # "scalarEmission":I
    :cond_79
    :try_start_79
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->done:Z

    .line 652
    .local v5, "d":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    move-object/from16 v26, v0

    .line 654
    move-object/from16 v0, p0

    iget-object v9, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 655
    .local v9, "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    array-length v15, v9

    .line 659
    .local v15, "n":I
    if-eqz v5, :cond_129

    if-eqz v26, :cond_92

    invoke-interface/range {v26 .. v26}, Ljava/util/Queue;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_129

    :cond_92
    if-nez v15, :cond_129

    .line 660
    move-object/from16 v0, p0

    iget-object v6, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 661
    .local v6, "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    if-eqz v6, :cond_a0

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_124

    .line 662
    :cond_a0
    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V
    :try_end_a3
    .catchall {:try_start_79 .. :try_end_a3} :catchall_106

    .line 666
    :goto_a3
    const/16 v23, 0x1

    .line 804
    if-nez v23, :cond_1a

    .line 805
    monitor-enter p0

    .line 806
    const/16 v30, 0x0

    :try_start_aa
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 807
    monitor-exit p0

    goto/16 :goto_1a

    :catchall_b3
    move-exception v30

    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_aa .. :try_end_b5} :catchall_b3

    throw v30

    .line 612
    .end local v5    # "d":Z
    .end local v6    # "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    .end local v9    # "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v15    # "n":I
    .restart local v16    # "o":Ljava/lang/Object;
    .restart local v22    # "scalarEmission":I
    :cond_b6
    :try_start_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c3
    .catchall {:try_start_b6 .. :try_end_c3} :catchall_106

    move-result-object v29

    .line 615
    .local v29, "v":Ljava/lang/Object;, "TT;"
    :try_start_c4
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_c9} :catch_d3
    .catchall {:try_start_c4 .. :try_end_c9} :catchall_106

    .line 626
    :goto_c9
    add-int/lit8 v19, v19, 0x1

    .line 627
    add-int/lit8 v22, v22, 0x1

    .line 628
    const-wide/16 v30, 0x1

    sub-long v20, v20, v30

    .line 629
    goto/16 :goto_41

    .line 616
    :catch_d3
    move-exception v27

    .line 617
    .local v27, "t":Ljava/lang/Throwable;
    :try_start_d4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    move/from16 v30, v0

    if-nez v30, :cond_fa

    .line 618
    invoke-static/range {v27 .. v27}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 619
    const/16 v23, 0x1

    .line 620
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    .line 621
    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_e9
    .catchall {:try_start_d4 .. :try_end_e9} :catchall_106

    .line 804
    if-nez v23, :cond_1a

    .line 805
    monitor-enter p0

    .line 806
    const/16 v30, 0x0

    :try_start_ee
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 807
    monitor-exit p0

    goto/16 :goto_1a

    :catchall_f7
    move-exception v30

    monitor-exit p0
    :try_end_f9
    .catchall {:try_start_ee .. :try_end_f9} :catchall_f7

    throw v30

    .line 624
    :cond_fa
    :try_start_fa
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_105
    .catchall {:try_start_fa .. :try_end_105} :catchall_106

    goto :goto_c9

    .line 804
    .end local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v16    # "o":Ljava/lang/Object;
    .end local v19    # "replenishMain":I
    .end local v20    # "r":J
    .end local v22    # "scalarEmission":I
    .end local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v27    # "t":Ljava/lang/Throwable;
    .end local v28    # "unbounded":Z
    .end local v29    # "v":Ljava/lang/Object;, "TT;"
    :catchall_106
    move-exception v30

    if-nez v23, :cond_113

    .line 805
    monitor-enter p0

    .line 806
    const/16 v31, 0x0

    :try_start_10c
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 807
    monitor-exit p0
    :try_end_113
    .catchall {:try_start_10c .. :try_end_113} :catchall_2bd

    :cond_113
    throw v30

    .line 634
    .restart local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v19    # "replenishMain":I
    .restart local v20    # "r":J
    .restart local v22    # "scalarEmission":I
    .restart local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v28    # "unbounded":Z
    :cond_114
    :try_start_114
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    move-result-wide v20

    goto/16 :goto_71

    .line 664
    .end local v22    # "scalarEmission":I
    .restart local v5    # "d":Z
    .restart local v6    # "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    .restart local v9    # "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .restart local v15    # "n":I
    :cond_124
    invoke-direct/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->reportError()V

    goto/16 :goto_a3

    .line 670
    .end local v6    # "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_129
    const/4 v10, 0x0

    .line 671
    .local v10, "innerCompleted":Z
    if-lez v15, :cond_271

    .line 673
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastId:J

    move-wide/from16 v24, v0

    .line 674
    .local v24, "startId":J
    move-object/from16 v0, p0

    iget v8, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastIndex:I

    .line 678
    .local v8, "index":I
    if-le v15, v8, :cond_144

    aget-object v30, v9, v8

    move-object/from16 v0, v30

    iget-wide v0, v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    move-wide/from16 v30, v0

    cmp-long v30, v30, v24

    if-eqz v30, :cond_16a

    .line 679
    :cond_144
    if-gt v15, v8, :cond_147

    .line 680
    const/4 v8, 0x0

    .line 683
    :cond_147
    move v14, v8

    .line 684
    .local v14, "j":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_149
    if-ge v7, v15, :cond_157

    .line 685
    aget-object v30, v9, v14

    move-object/from16 v0, v30

    iget-wide v0, v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    move-wide/from16 v30, v0

    cmp-long v30, v30, v24

    if-nez v30, :cond_187

    .line 696
    :cond_157
    move v8, v14

    .line 697
    move-object/from16 v0, p0

    iput v14, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastIndex:I

    .line 698
    aget-object v30, v9, v14

    move-object/from16 v0, v30

    iget-wide v0, v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastId:J

    .line 701
    .end local v7    # "i":I
    .end local v14    # "j":I
    :cond_16a
    move v14, v8

    .line 703
    .restart local v14    # "j":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_16c
    if-ge v7, v15, :cond_25f

    .line 705
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z
    :try_end_171
    .catchall {:try_start_114 .. :try_end_171} :catchall_106

    move-result v30

    if-eqz v30, :cond_18f

    .line 706
    const/16 v23, 0x1

    .line 804
    if-nez v23, :cond_1a

    .line 805
    monitor-enter p0

    .line 806
    const/16 v30, 0x0

    :try_start_17b
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 807
    monitor-exit p0

    goto/16 :goto_1a

    :catchall_184
    move-exception v30

    monitor-exit p0
    :try_end_186
    .catchall {:try_start_17b .. :try_end_186} :catchall_184

    throw v30

    .line 689
    :cond_187
    add-int/lit8 v14, v14, 0x1

    .line 690
    if-ne v14, v15, :cond_18c

    .line 691
    const/4 v14, 0x0

    .line 684
    :cond_18c
    add-int/lit8 v7, v7, 0x1

    goto :goto_149

    .line 710
    :cond_18f
    :try_start_18f
    aget-object v13, v9, v14

    .line 712
    .local v13, "is":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    const/16 v16, 0x0

    .line 714
    :cond_193
    const/16 v17, 0x0

    .line 715
    .local v17, "produced":I
    :goto_195
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-lez v30, :cond_1ba

    .line 717
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z
    :try_end_19e
    .catchall {:try_start_18f .. :try_end_19e} :catchall_106

    move-result v30

    if-eqz v30, :cond_1b4

    .line 718
    const/16 v23, 0x1

    .line 804
    if-nez v23, :cond_1a

    .line 805
    monitor-enter p0

    .line 806
    const/16 v30, 0x0

    :try_start_1a8
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 807
    monitor-exit p0

    goto/16 :goto_1a

    :catchall_1b1
    move-exception v30

    monitor-exit p0
    :try_end_1b3
    .catchall {:try_start_1a8 .. :try_end_1b3} :catchall_1b1

    throw v30

    .line 721
    :cond_1b4
    :try_start_1b4
    iget-object v0, v13, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    move-object/from16 v18, v0

    .line 722
    .local v18, "q":Lrx/internal/util/RxRingBuffer;
    if-nez v18, :cond_20a

    .line 746
    .end local v18    # "q":Lrx/internal/util/RxRingBuffer;
    :cond_1ba
    if-lez v17, :cond_1d6

    .line 747
    if-nez v28, :cond_24f

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    move-result-wide v20

    .line 752
    :goto_1cc
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    invoke-virtual {v13, v0, v1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->requestMore(J)V

    .line 755
    :cond_1d6
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-eqz v30, :cond_1de

    if-nez v16, :cond_193

    .line 759
    :cond_1de
    iget-boolean v11, v13, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->done:Z

    .line 760
    .local v11, "innerDone":Z
    iget-object v12, v13, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 761
    .local v12, "innerQueue":Lrx/internal/util/RxRingBuffer;
    if-eqz v11, :cond_259

    if-eqz v12, :cond_1ec

    invoke-virtual {v12}, Lrx/internal/util/RxRingBuffer;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_259

    .line 762
    :cond_1ec
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->removeInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V

    .line 763
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z
    :try_end_1f4
    .catchall {:try_start_1b4 .. :try_end_1f4} :catchall_106

    move-result v30

    if-eqz v30, :cond_256

    .line 764
    const/16 v23, 0x1

    .line 804
    if-nez v23, :cond_1a

    .line 805
    monitor-enter p0

    .line 806
    const/16 v30, 0x0

    :try_start_1fe
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 807
    monitor-exit p0

    goto/16 :goto_1a

    :catchall_207
    move-exception v30

    monitor-exit p0
    :try_end_209
    .catchall {:try_start_1fe .. :try_end_209} :catchall_207

    throw v30

    .line 725
    .end local v11    # "innerDone":Z
    .end local v12    # "innerQueue":Lrx/internal/util/RxRingBuffer;
    .restart local v18    # "q":Lrx/internal/util/RxRingBuffer;
    :cond_20a
    :try_start_20a
    invoke-virtual/range {v18 .. v18}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v16

    .line 726
    .restart local v16    # "o":Ljava/lang/Object;
    if-eqz v16, :cond_1ba

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21d
    .catchall {:try_start_20a .. :try_end_21d} :catchall_106

    move-result-object v29

    .line 732
    .restart local v29    # "v":Ljava/lang/Object;, "TT;"
    :try_start_21e
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_223
    .catch Ljava/lang/Throwable; {:try_start_21e .. :try_end_223} :catch_22b
    .catchall {:try_start_21e .. :try_end_223} :catchall_106

    .line 743
    const-wide/16 v30, 0x1

    sub-long v20, v20, v30

    .line 744
    add-int/lit8 v17, v17, 0x1

    .line 745
    goto/16 :goto_195

    .line 733
    :catch_22b
    move-exception v27

    .line 734
    .restart local v27    # "t":Ljava/lang/Throwable;
    const/16 v23, 0x1

    .line 735
    :try_start_22e
    invoke-static/range {v27 .. v27}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V
    :try_end_231
    .catchall {:try_start_22e .. :try_end_231} :catchall_106

    .line 737
    :try_start_231
    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_236
    .catchall {:try_start_231 .. :try_end_236} :catchall_24a

    .line 739
    :try_start_236
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V
    :try_end_239
    .catchall {:try_start_236 .. :try_end_239} :catchall_106

    .line 804
    if-nez v23, :cond_1a

    .line 805
    monitor-enter p0

    .line 806
    const/16 v30, 0x0

    :try_start_23e
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 807
    monitor-exit p0

    goto/16 :goto_1a

    :catchall_247
    move-exception v30

    monitor-exit p0
    :try_end_249
    .catchall {:try_start_23e .. :try_end_249} :catchall_247

    throw v30

    .line 739
    :catchall_24a
    move-exception v30

    :try_start_24b
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    throw v30

    .line 750
    .end local v16    # "o":Ljava/lang/Object;
    .end local v18    # "q":Lrx/internal/util/RxRingBuffer;
    .end local v27    # "t":Ljava/lang/Throwable;
    .end local v29    # "v":Ljava/lang/Object;, "TT;"
    :cond_24f
    const-wide v20, 0x7fffffffffffffffL

    goto/16 :goto_1cc

    .line 767
    .restart local v11    # "innerDone":Z
    .restart local v12    # "innerQueue":Lrx/internal/util/RxRingBuffer;
    :cond_256
    add-int/lit8 v19, v19, 0x1

    .line 768
    const/4 v10, 0x1

    .line 771
    :cond_259
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-nez v30, :cond_2a6

    .line 782
    .end local v11    # "innerDone":Z
    .end local v12    # "innerQueue":Lrx/internal/util/RxRingBuffer;
    .end local v13    # "is":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .end local v17    # "produced":I
    :cond_25f
    move-object/from16 v0, p0

    iput v14, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastIndex:I

    .line 783
    aget-object v30, v9, v14

    move-object/from16 v0, v30

    iget-wide v0, v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastId:J

    .line 786
    .end local v7    # "i":I
    .end local v8    # "index":I
    .end local v14    # "j":I
    .end local v24    # "startId":J
    :cond_271
    if-lez v19, :cond_27f

    .line 787
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 790
    :cond_27f
    if-nez v10, :cond_6

    .line 794
    monitor-enter p0
    :try_end_282
    .catchall {:try_start_24b .. :try_end_282} :catchall_106

    .line 795
    :try_start_282
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    move/from16 v30, v0

    if-nez v30, :cond_2af

    .line 796
    const/16 v23, 0x1

    .line 797
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 798
    monitor-exit p0
    :try_end_295
    .catchall {:try_start_282 .. :try_end_295} :catchall_2ba

    .line 804
    if-nez v23, :cond_1a

    .line 805
    monitor-enter p0

    .line 806
    const/16 v30, 0x0

    :try_start_29a
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 807
    monitor-exit p0

    goto/16 :goto_1a

    :catchall_2a3
    move-exception v30

    monitor-exit p0
    :try_end_2a5
    .catchall {:try_start_29a .. :try_end_2a5} :catchall_2a3

    throw v30

    .line 776
    .restart local v7    # "i":I
    .restart local v8    # "index":I
    .restart local v11    # "innerDone":Z
    .restart local v12    # "innerQueue":Lrx/internal/util/RxRingBuffer;
    .restart local v13    # "is":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .restart local v14    # "j":I
    .restart local v17    # "produced":I
    .restart local v24    # "startId":J
    :cond_2a6
    add-int/lit8 v14, v14, 0x1

    .line 777
    if-ne v14, v15, :cond_2ab

    .line 778
    const/4 v14, 0x0

    .line 703
    :cond_2ab
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_16c

    .line 800
    .end local v7    # "i":I
    .end local v8    # "index":I
    .end local v11    # "innerDone":Z
    .end local v12    # "innerQueue":Lrx/internal/util/RxRingBuffer;
    .end local v13    # "is":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .end local v14    # "j":I
    .end local v17    # "produced":I
    .end local v24    # "startId":J
    :cond_2af
    const/16 v30, 0x0

    :try_start_2b1
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 801
    monitor-exit p0

    goto/16 :goto_6

    :catchall_2ba
    move-exception v30

    monitor-exit p0
    :try_end_2bc
    .catchall {:try_start_2b1 .. :try_end_2bc} :catchall_2ba

    :try_start_2bc
    throw v30
    :try_end_2bd
    .catchall {:try_start_2bc .. :try_end_2bd} :catchall_106

    .line 807
    .end local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v5    # "d":Z
    .end local v9    # "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v10    # "innerCompleted":Z
    .end local v15    # "n":I
    .end local v19    # "replenishMain":I
    .end local v20    # "r":J
    .end local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v28    # "unbounded":Z
    :catchall_2bd
    move-exception v30

    :try_start_2be
    monitor-exit p0
    :try_end_2bf
    .catchall {:try_start_2be .. :try_end_2bf} :catchall_2bd

    throw v30
.end method

.method protected emitScalar(Ljava/lang/Object;J)V
    .registers 10
    .param p2, "r"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 517
    .local v1, "skipFinal":Z
    :try_start_1
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_36
    .catchall {:try_start_1 .. :try_end_6} :catchall_58

    .line 528
    :goto_6
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, p2, v4

    if-eqz v3, :cond_15

    .line 529
    :try_start_f
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    .line 532
    :cond_15
    iget v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    add-int/lit8 v0, v3, 0x1

    .line 533
    .local v0, "produced":I
    iget v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionLimit:I

    if-ne v0, v3, :cond_61

    .line 534
    const/4 v3, 0x0

    iput v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    .line 535
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->requestMore(J)V

    .line 541
    :goto_24
    monitor-enter p0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_58

    .line 542
    const/4 v1, 0x1

    .line 543
    :try_start_26
    iget-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    if-nez v3, :cond_67

    .line 544
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 545
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_76

    .line 550
    if-nez v1, :cond_35

    .line 551
    monitor-enter p0

    .line 552
    const/4 v3, 0x0

    :try_start_32
    iput-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 553
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_64

    .line 564
    .end local v0    # "produced":I
    :cond_35
    :goto_35
    return-void

    .line 518
    :catch_36
    move-exception v2

    .line 519
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_37
    iget-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v3, :cond_50

    .line 520
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 521
    const/4 v1, 0x1

    .line 522
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    .line 523
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_58

    .line 550
    if-nez v1, :cond_35

    .line 551
    monitor-enter p0

    .line 552
    const/4 v3, 0x0

    :try_start_49
    iput-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 553
    monitor-exit p0

    goto :goto_35

    :catchall_4d
    move-exception v3

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4d

    throw v3

    .line 526
    :cond_50
    :try_start_50
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_58

    goto :goto_6

    .line 550
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_58
    move-exception v3

    if-nez v1, :cond_60

    .line 551
    monitor-enter p0

    .line 552
    const/4 v4, 0x0

    :try_start_5d
    iput-boolean v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 553
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_7c

    :cond_60
    throw v3

    .line 537
    .restart local v0    # "produced":I
    :cond_61
    :try_start_61
    iput v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_58

    goto :goto_24

    .line 553
    :catchall_64
    move-exception v3

    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v3

    .line 547
    :cond_67
    const/4 v3, 0x0

    :try_start_68
    iput-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 548
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_76

    .line 550
    if-nez v1, :cond_72

    .line 551
    monitor-enter p0

    .line 552
    const/4 v3, 0x0

    :try_start_6f
    iput-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 553
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_79

    .line 563
    :cond_72
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    goto :goto_35

    .line 548
    :catchall_76
    move-exception v3

    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    :try_start_78
    throw v3
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_58

    .line 553
    :catchall_79
    move-exception v3

    :try_start_7a
    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v3

    .end local v0    # "produced":I
    :catchall_7c
    move-exception v3

    :try_start_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v3
.end method

.method protected emitScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;J)V
    .registers 10
    .param p3, "r"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;TT;J)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "subscriber":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 399
    .local v0, "skipFinal":Z
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, p2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_2c
    .catchall {:try_start_1 .. :try_end_6} :catchall_4e

    .line 410
    :goto_6
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p3, v2

    if-eqz v2, :cond_15

    .line 411
    :try_start_f
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    .line 413
    :cond_15
    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->requestMore(J)V

    .line 415
    monitor-enter p0
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_4e

    .line 416
    const/4 v0, 0x1

    .line 417
    :try_start_1c
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    if-nez v2, :cond_5a

    .line 418
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 419
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_69

    .line 424
    if-nez v0, :cond_2b

    .line 425
    monitor-enter p0

    .line 426
    const/4 v2, 0x0

    :try_start_28
    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 427
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_57

    .line 438
    :cond_2b
    :goto_2b
    return-void

    .line 400
    :catch_2c
    move-exception v1

    .line 401
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2d
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v2, :cond_46

    .line 402
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 403
    const/4 v0, 0x1

    .line 404
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->unsubscribe()V

    .line 405
    invoke-virtual {p1, v1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_4e

    .line 424
    if-nez v0, :cond_2b

    .line 425
    monitor-enter p0

    .line 426
    const/4 v2, 0x0

    :try_start_3f
    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 427
    monitor-exit p0

    goto :goto_2b

    :catchall_43
    move-exception v2

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_43

    throw v2

    .line 408
    :cond_46
    :try_start_46
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_4e

    goto :goto_6

    .line 424
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_4e
    move-exception v2

    if-nez v0, :cond_56

    .line 425
    monitor-enter p0

    .line 426
    const/4 v3, 0x0

    :try_start_53
    iput-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 427
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_6f

    :cond_56
    throw v2

    :catchall_57
    move-exception v2

    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v2

    .line 421
    :cond_5a
    const/4 v2, 0x0

    :try_start_5b
    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 422
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_69

    .line 424
    if-nez v0, :cond_65

    .line 425
    monitor-enter p0

    .line 426
    const/4 v2, 0x0

    :try_start_62
    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 427
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_6c

    .line 437
    :cond_65
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    goto :goto_2b

    .line 422
    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_4e

    .line 427
    :catchall_6c
    move-exception v2

    :try_start_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v2

    :catchall_6f
    move-exception v2

    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v2
.end method

.method getOrCreateComposite()Lrx/subscriptions/CompositeSubscription;
    .registers 5

    .prologue
    .line 219
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    .line 220
    .local v0, "c":Lrx/subscriptions/CompositeSubscription;
    if-nez v0, :cond_19

    .line 221
    const/4 v2, 0x0

    .line 222
    .local v2, "shouldAdd":Z
    monitor-enter p0

    .line 223
    :try_start_6
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    .line 224
    if-nez v0, :cond_13

    .line 225
    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1a

    .line 226
    .end local v0    # "c":Lrx/subscriptions/CompositeSubscription;
    .local v1, "c":Lrx/subscriptions/CompositeSubscription;
    :try_start_f
    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lrx/subscriptions/CompositeSubscription;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_1d

    .line 227
    const/4 v2, 0x1

    move-object v0, v1

    .line 229
    .end local v1    # "c":Lrx/subscriptions/CompositeSubscription;
    .restart local v0    # "c":Lrx/subscriptions/CompositeSubscription;
    :cond_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_1a

    .line 230
    if-eqz v2, :cond_19

    .line 231
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->add(Lrx/Subscription;)V

    .line 234
    .end local v2    # "shouldAdd":Z
    :cond_19
    return-object v0

    .line 229
    .restart local v2    # "shouldAdd":Z
    :catchall_1a
    move-exception v3

    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v3

    .end local v0    # "c":Lrx/subscriptions/CompositeSubscription;
    .restart local v1    # "c":Lrx/subscriptions/CompositeSubscription;
    :catchall_1d
    move-exception v3

    move-object v0, v1

    .end local v1    # "c":Lrx/subscriptions/CompositeSubscription;
    .restart local v0    # "c":Lrx/subscriptions/CompositeSubscription;
    goto :goto_1b
.end method

.method getOrCreateErrorQueue()Ljava/util/Queue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 207
    .local v0, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    if-nez v0, :cond_12

    .line 208
    monitor-enter p0

    .line 209
    :try_start_5
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 210
    if-nez v0, :cond_11

    .line 211
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .line 212
    .end local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    .local v1, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    :try_start_e
    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 214
    .end local v1    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    .restart local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 216
    :cond_12
    return-object v0

    .line 214
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    .restart local v1    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    .restart local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    goto :goto_14
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 282
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->done:Z

    .line 283
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 284
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 276
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->done:Z

    .line 278
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 279
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 147
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    if-nez p1, :cond_3

    .line 253
    .end local p1    # "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :goto_2
    return-void

    .line 242
    .restart local p1    # "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :cond_3
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v1

    if-ne p1, v1, :cond_d

    .line 243
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitEmpty()V

    goto :goto_2

    .line 245
    :cond_d
    instance-of v1, p1, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v1, :cond_1b

    .line 246
    check-cast p1, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p1    # "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-virtual {p1}, Lrx/internal/util/ScalarSynchronousObservable;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->tryEmit(Ljava/lang/Object;)V

    goto :goto_2

    .line 248
    .restart local p1    # "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :cond_1b
    new-instance v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    iget-wide v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->uniqueId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->uniqueId:J

    invoke-direct {v0, p0, v2, v3}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;-><init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;J)V

    .line 249
    .local v0, "inner":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->addInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V

    .line 250
    invoke-virtual {p1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 251
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    goto :goto_2
.end method

.method protected queueScalar(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    .line 489
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v1, :cond_14

    .line 490
    iget v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->maxConcurrent:I

    .line 491
    .local v0, "mc":I
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_30

    .line 492
    new-instance v1, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    sget v2, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v1, v2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;-><init>(I)V

    .line 504
    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_12
    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    .line 506
    .end local v0    # "mc":I
    :cond_14
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 507
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    .line 508
    new-instance v2, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v2}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-static {v2, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 511
    :cond_2f
    return-void

    .line 494
    .restart local v0    # "mc":I
    :cond_30
    invoke-static {v0}, Lrx/internal/util/unsafe/Pow2;->isPowerOfTwo(I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 495
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 496
    new-instance v1, Lrx/internal/util/unsafe/SpscArrayQueue;

    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {v1, v0}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_12

    .line 498
    :cond_42
    new-instance v1, Lrx/internal/util/atomic/SpscAtomicArrayQueue;

    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {v1, v0}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;-><init>(I)V

    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_12

    .line 501
    :cond_48
    new-instance v1, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;

    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {v1, v0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;-><init>(I)V

    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_12
.end method

.method protected queueScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "subscriber":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 375
    .local v1, "q":Lrx/internal/util/RxRingBuffer;
    if-nez v1, :cond_d

    .line 376
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->getSpscInstance()Lrx/internal/util/RxRingBuffer;

    move-result-object v1

    .line 377
    invoke-virtual {p1, v1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->add(Lrx/Subscription;)V

    .line 378
    iput-object v1, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 381
    :cond_d
    :try_start_d
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p2}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_16
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_d .. :try_end_16} :catch_17
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_16} :catch_1f

    .line 393
    :cond_16
    :goto_16
    return-void

    .line 382
    :catch_17
    move-exception v0

    .line 383
    .local v0, "ex":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->unsubscribe()V

    .line 384
    invoke-virtual {p1, v0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_16

    .line 386
    .end local v0    # "ex":Lrx/exceptions/MissingBackpressureException;
    :catch_1f
    move-exception v0

    .line 387
    .local v0, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_16

    .line 388
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->unsubscribe()V

    .line 389
    invoke-virtual {p1, v0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method removeInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "inner":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    iget-object v5, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 299
    .local v5, "q":Lrx/internal/util/RxRingBuffer;
    if-eqz v5, :cond_7

    .line 300
    invoke-virtual {v5}, Lrx/internal/util/RxRingBuffer;->release()V

    .line 304
    :cond_7
    iget-object v6, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v6, p1}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 305
    iget-object v7, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerGuard:Ljava/lang/Object;

    monitor-enter v7

    .line 306
    :try_start_f
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 307
    .local v0, "a":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    array-length v4, v0

    .line 308
    .local v4, "n":I
    const/4 v3, -0x1

    .line 310
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v4, :cond_1f

    .line 311
    aget-object v6, v0, v2

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 312
    move v3, v2

    .line 316
    :cond_1f
    if-gez v3, :cond_26

    .line 317
    monitor-exit v7

    .line 328
    :goto_22
    return-void

    .line 310
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 319
    :cond_26
    const/4 v6, 0x1

    if-ne v4, v6, :cond_32

    .line 320
    sget-object v6, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->EMPTY:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    iput-object v6, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 321
    monitor-exit v7

    goto :goto_22

    .line 327
    .end local v0    # "a":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "n":I
    :catchall_2f
    move-exception v6

    monitor-exit v7
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_2f

    throw v6

    .line 323
    .restart local v0    # "a":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "n":I
    :cond_32
    add-int/lit8 v6, v4, -0x1

    :try_start_34
    new-array v1, v6, [Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 324
    .local v1, "b":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v6, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    add-int/lit8 v6, v3, 0x1

    sub-int v8, v4, v3

    add-int/lit8 v8, v8, -0x1

    invoke-static {v0, v6, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 327
    monitor-exit v7
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_2f

    goto :goto_22
.end method

.method public requestMore(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 441
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 442
    return-void
.end method

.method tryEmit(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const-wide/16 v6, 0x0

    .line 456
    const/4 v1, 0x0

    .line 457
    .local v1, "success":Z
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v4}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v2

    .line 458
    .local v2, "r":J
    cmp-long v4, v2, v6

    if-eqz v4, :cond_21

    .line 459
    monitor-enter p0

    .line 461
    :try_start_e
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v4}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v2

    .line 462
    iget-boolean v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    if-nez v4, :cond_20

    cmp-long v4, v2, v6

    if-eqz v4, :cond_20

    .line 463
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 464
    const/4 v1, 0x1

    .line 466
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_31

    .line 468
    :cond_21
    if-eqz v1, :cond_3b

    .line 469
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    .line 470
    .local v0, "mainQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 471
    :cond_2d
    invoke-virtual {p0, p1, v2, v3}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitScalar(Ljava/lang/Object;J)V

    .line 480
    .end local v0    # "mainQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_30
    return-void

    .line 466
    :catchall_31
    move-exception v4

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v4

    .line 473
    .restart local v0    # "mainQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_34
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queueScalar(Ljava/lang/Object;)V

    .line 474
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    goto :goto_30

    .line 477
    .end local v0    # "mainQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_3b
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queueScalar(Ljava/lang/Object;)V

    .line 478
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    goto :goto_30
.end method

.method tryEmit(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "subscriber":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-wide/16 v6, 0x0

    .line 342
    const/4 v3, 0x0

    .line 343
    .local v3, "success":Z
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v4}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    .line 344
    .local v0, "r":J
    cmp-long v4, v0, v6

    if-eqz v4, :cond_21

    .line 345
    monitor-enter p0

    .line 347
    :try_start_e
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v4}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    .line 348
    iget-boolean v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    if-nez v4, :cond_20

    cmp-long v4, v0, v6

    if-eqz v4, :cond_20

    .line 349
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 350
    const/4 v3, 0x1

    .line 352
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_31

    .line 354
    :cond_21
    if-eqz v3, :cond_3b

    .line 355
    iget-object v2, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 356
    .local v2, "subscriberQueue":Lrx/internal/util/RxRingBuffer;
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Lrx/internal/util/RxRingBuffer;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 357
    :cond_2d
    invoke-virtual {p0, p1, p2, v0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;J)V

    .line 366
    .end local v2    # "subscriberQueue":Lrx/internal/util/RxRingBuffer;
    :goto_30
    return-void

    .line 352
    :catchall_31
    move-exception v4

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v4

    .line 359
    .restart local v2    # "subscriberQueue":Lrx/internal/util/RxRingBuffer;
    :cond_34
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queueScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V

    .line 360
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    goto :goto_30

    .line 363
    .end local v2    # "subscriberQueue":Lrx/internal/util/RxRingBuffer;
    :cond_3b
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queueScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V

    .line 364
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    goto :goto_30
.end method
