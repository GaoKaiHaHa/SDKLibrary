.class final Lokhttp3/internal/framed/FramedStream$FramedDataSink;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FramedDataSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMIT_BUFFER_SIZE:J = 0x4000L


# instance fields
.field private closed:Z

.field private finished:Z

.field private final sendBuffer:Lokio/Buffer;

.field final synthetic this$0:Lokhttp3/internal/framed/FramedStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 468
    const-class v0, Lokhttp3/internal/framed/FramedStream;

    return-void
.end method

.method constructor <init>(Lokhttp3/internal/framed/FramedStream;)V
    .registers 3
    .param p1, "this$0"    # Lokhttp3/internal/framed/FramedStream;

    .line 468
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    return-void
.end method

.method static synthetic access$200(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    .line 468
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->finished:Z

    return v0
.end method

.method static synthetic access$202(Lokhttp3/internal/framed/FramedStream$FramedDataSink;Z)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream$FramedDataSink;
    .param p1, "x1"    # Z

    .line 468
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->finished:Z

    return p1
.end method

.method static synthetic access$400(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    .line 468
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->closed:Z

    return v0
.end method

.method private emitDataFrame(Z)V
    .registers 11
    .param p1, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v0

    .line 499
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->enter()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_9e

    .line 501
    :goto_c
    :try_start_c
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    iget-wide v1, v1, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2c

    iget-boolean v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->finished:Z

    if-nez v1, :cond_2c

    iget-boolean v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->closed:Z

    if-nez v1, :cond_2c

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;
    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->access$800(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 502
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # invokes: Lokhttp3/internal/framed/FramedStream;->waitForIo()V
    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->access$900(Lokhttp3/internal/framed/FramedStream;)V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_93

    goto :goto_c

    .line 505
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 506
    nop

    .line 508
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # invokes: Lokhttp3/internal/framed/FramedStream;->checkOutNotClosed()V
    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->access$1200(Lokhttp3/internal/framed/FramedStream;)V

    .line 509
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    iget-wide v1, v1, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 510
    .local v1, "toWrite":J
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    iget-wide v4, v3, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    sub-long/2addr v4, v1

    iput-wide v4, v3, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 511
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_2c .. :try_end_51} :catchall_9e

    .line 513
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->enter()V

    .line 515
    :try_start_5a
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v3

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->id:I
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$600(Lokhttp3/internal/framed/FramedStream;)I

    move-result v4

    if-eqz p1, :cond_75

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v0, v1, v5

    if-nez v0, :cond_75

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_77

    :cond_75
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_77
    iget-object v6, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    move-wide v7, v1

    invoke-virtual/range {v3 .. v8}, Lokhttp3/internal/framed/FramedConnection;->writeData(IZLokio/Buffer;J)V
    :try_end_7d
    .catchall {:try_start_5a .. :try_end_7d} :catchall_88

    .line 517
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 518
    nop

    .line 519
    return-void

    .line 517
    :catchall_88
    move-exception v0

    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v3}, Lokhttp3/internal/framed/FramedStream;->access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0

    .line 505
    .end local v1    # "toWrite":J
    :catchall_93
    move-exception v1

    :try_start_94
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream;->access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .end local p1    # "outFinished":Z
    throw v1

    .line 511
    .restart local p1    # "outFinished":Z
    :catchall_9e
    move-exception v1

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_94 .. :try_end_a0} :catchall_9e

    goto :goto_a2

    :goto_a1
    throw v1

    :goto_a2
    goto :goto_a1
.end method


# virtual methods
.method public close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    nop

    .line 538
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v0

    .line 539
    :try_start_4
    iget-boolean v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->closed:Z

    if-eqz v1, :cond_a

    monitor-exit v0

    return-void

    .line 540
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_59

    .line 541
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    iget-object v0, v0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    iget-boolean v0, v0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->finished:Z

    const/4 v1, 0x1

    if-nez v0, :cond_41

    .line 543
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2e

    .line 544
    :goto_20
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_41

    .line 545
    invoke-direct {p0, v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_20

    .line 549
    :cond_2e
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->id:I
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$600(Lokhttp3/internal/framed/FramedStream;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lokhttp3/internal/framed/FramedConnection;->writeData(IZLokio/Buffer;J)V

    .line 552
    :cond_41
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v2

    .line 553
    :try_start_44
    iput-boolean v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->closed:Z

    .line 554
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_56

    .line 555
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->flush()V

    .line 556
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # invokes: Lokhttp3/internal/framed/FramedStream;->cancelStreamIfNecessary()V
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$1000(Lokhttp3/internal/framed/FramedStream;)V

    .line 557
    return-void

    .line 554
    :catchall_56
    move-exception v0

    :try_start_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v0

    .line 540
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    goto :goto_5d

    :goto_5c
    throw v1

    :goto_5d
    goto :goto_5c
.end method

.method public flush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    nop

    .line 523
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v0

    .line 524
    :try_start_4
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # invokes: Lokhttp3/internal/framed/FramedStream;->checkOutNotClosed()V
    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->access$1200(Lokhttp3/internal/framed/FramedStream;)V

    .line 525
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_25

    .line 526
    :goto_a
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_24

    .line 527
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    .line 528
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->flush()V

    goto :goto_a

    .line 530
    :cond_24
    return-void

    .line 525
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    goto :goto_29

    :goto_28
    throw v1

    :goto_29
    goto :goto_28
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 533
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 9
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    nop

    .line 486
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 487
    :goto_6
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_17

    .line 488
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_6

    .line 490
    :cond_17
    return-void
.end method
