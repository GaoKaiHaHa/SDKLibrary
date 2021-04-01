.class public final Lrx/internal/util/BackpressureDrainManager;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "BackpressureDrainManager.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    }
.end annotation

.annotation build Lrx/annotations/Experimental;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2738d34f11cd4869L


# instance fields
.field final actual:Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

.field emitting:Z

.field exception:Ljava/lang/Throwable;

.field volatile terminated:Z


# direct methods
.method public constructor <init>(Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;)V
    .registers 2
    .param p1, "actual"    # Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 83
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->actual:Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

    .line 84
    return-void
.end method


# virtual methods
.method public drain()V
    .registers 15

    .prologue
    .line 169
    monitor-enter p0

    .line 170
    :try_start_1
    iget-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    if-eqz v9, :cond_7

    .line 171
    monitor-exit p0

    .line 234
    :cond_6
    :goto_6
    return-void

    .line 173
    :cond_7
    const/4 v9, 0x1

    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 174
    iget-boolean v8, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 175
    .local v8, "term":Z
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_36

    .line 176
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->get()J

    move-result-wide v4

    .line 177
    .local v4, "n":J
    const/4 v7, 0x0

    .line 179
    .local v7, "skipFinal":Z
    :try_start_12
    iget-object v0, p0, Lrx/internal/util/BackpressureDrainManager;->actual:Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

    .line 181
    .local v0, "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    :goto_14
    const/4 v2, 0x0

    .line 182
    .local v2, "emitted":I
    :goto_15
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-gtz v9, :cond_1d

    if-eqz v8, :cond_3f

    .line 184
    :cond_1d
    if-eqz v8, :cond_6a

    .line 185
    invoke-interface {v0}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->peek()Ljava/lang/Object;

    move-result-object v6

    .line 186
    .local v6, "o":Ljava/lang/Object;
    if-nez v6, :cond_39

    .line 187
    const/4 v7, 0x1

    .line 188
    iget-object v1, p0, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    .line 189
    .local v1, "e":Ljava/lang/Throwable;
    invoke-interface {v0, v1}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->complete(Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_94

    .line 231
    if-nez v7, :cond_6

    .line 232
    monitor-enter p0

    .line 233
    const/4 v9, 0x0

    :try_start_2f
    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 234
    monitor-exit p0

    goto :goto_6

    :catchall_33
    move-exception v9

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_33

    throw v9

    .line 175
    .end local v0    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "emitted":I
    .end local v4    # "n":J
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "skipFinal":Z
    .end local v8    # "term":Z
    :catchall_36
    move-exception v9

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v9

    .line 192
    .restart local v0    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    .restart local v2    # "emitted":I
    .restart local v4    # "n":J
    .restart local v6    # "o":Ljava/lang/Object;
    .restart local v7    # "skipFinal":Z
    .restart local v8    # "term":Z
    :cond_39
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-nez v9, :cond_6a

    .line 208
    .end local v6    # "o":Ljava/lang/Object;
    :cond_3f
    :try_start_3f
    monitor-enter p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_94

    .line 209
    :try_start_40
    iget-boolean v8, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 210
    invoke-interface {v0}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->peek()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_88

    const/4 v3, 0x1

    .line 212
    .local v3, "more":Z
    :goto_49
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->get()J

    move-result-wide v10

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v9, v10, v12

    if-nez v9, :cond_9d

    .line 214
    if-nez v3, :cond_8a

    if-nez v8, :cond_8a

    .line 215
    const/4 v7, 0x1

    .line 216
    const/4 v9, 0x0

    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 217
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_40 .. :try_end_5f} :catchall_91

    .line 231
    if-nez v7, :cond_6

    .line 232
    monitor-enter p0

    .line 233
    const/4 v9, 0x0

    :try_start_63
    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 234
    monitor-exit p0

    goto :goto_6

    :catchall_67
    move-exception v9

    monitor-exit p0
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_67

    throw v9

    .line 196
    .end local v3    # "more":Z
    :cond_6a
    :try_start_6a
    invoke-interface {v0}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->poll()Ljava/lang/Object;

    move-result-object v6

    .line 197
    .restart local v6    # "o":Ljava/lang/Object;
    if-eqz v6, :cond_3f

    .line 200
    invoke-interface {v0, v6}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->accept(Ljava/lang/Object;)Z
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_94

    move-result v9

    if-eqz v9, :cond_82

    .line 201
    const/4 v7, 0x1

    .line 231
    if-nez v7, :cond_6

    .line 232
    monitor-enter p0

    .line 233
    const/4 v9, 0x0

    :try_start_7b
    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 234
    monitor-exit p0

    goto :goto_6

    :catchall_7f
    move-exception v9

    monitor-exit p0
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_7f

    throw v9

    .line 204
    :cond_82
    const-wide/16 v10, 0x1

    sub-long/2addr v4, v10

    .line 205
    add-int/lit8 v2, v2, 0x1

    .line 207
    goto :goto_15

    .line 210
    .end local v6    # "o":Ljava/lang/Object;
    :cond_88
    const/4 v3, 0x0

    goto :goto_49

    .line 219
    .restart local v3    # "more":Z
    :cond_8a
    const-wide v4, 0x7fffffffffffffffL

    .line 228
    :cond_8f
    :try_start_8f
    monitor-exit p0

    goto :goto_14

    .end local v3    # "more":Z
    :catchall_91
    move-exception v9

    monitor-exit p0
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_91

    :try_start_93
    throw v9
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_94

    .line 231
    .end local v0    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    .end local v2    # "emitted":I
    :catchall_94
    move-exception v9

    if-nez v7, :cond_9c

    .line 232
    monitor-enter p0

    .line 233
    const/4 v10, 0x0

    :try_start_99
    iput-boolean v10, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 234
    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_c0

    :cond_9c
    throw v9

    .line 221
    .restart local v0    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    .restart local v2    # "emitted":I
    .restart local v3    # "more":Z
    :cond_9d
    neg-int v9, v2

    int-to-long v10, v9

    :try_start_9f
    invoke-virtual {p0, v10, v11}, Lrx/internal/util/BackpressureDrainManager;->addAndGet(J)J

    move-result-wide v4

    .line 222
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_ab

    if-nez v3, :cond_8f

    :cond_ab
    if-eqz v8, :cond_af

    if-eqz v3, :cond_8f

    .line 223
    :cond_af
    const/4 v7, 0x1

    .line 224
    const/4 v9, 0x0

    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 225
    monitor-exit p0
    :try_end_b4
    .catchall {:try_start_9f .. :try_end_b4} :catchall_91

    .line 231
    if-nez v7, :cond_6

    .line 232
    monitor-enter p0

    .line 233
    const/4 v9, 0x0

    :try_start_b8
    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 234
    monitor-exit p0

    goto/16 :goto_6

    :catchall_bd
    move-exception v9

    monitor-exit p0
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_bd

    throw v9

    .end local v0    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    .end local v2    # "emitted":I
    .end local v3    # "more":Z
    :catchall_c0
    move-exception v9

    :try_start_c1
    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw v9
.end method

.method public isTerminated()Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    return v0
.end method

.method public request(J)V
    .registers 16
    .param p1, "n"    # J

    .prologue
    const-wide/16 v10, 0x0

    const-wide v8, 0x7fffffffffffffffL

    .line 134
    cmp-long v1, p1, v10

    if-nez v1, :cond_c

    .line 162
    :cond_b
    :goto_b
    return-void

    .line 141
    :cond_c
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->get()J

    move-result-wide v2

    .line 142
    .local v2, "r":J
    cmp-long v1, v2, v10

    if-nez v1, :cond_1f

    const/4 v0, 0x1

    .line 143
    .local v0, "mayDrain":Z
    :goto_15
    cmp-long v1, v2, v8

    if-nez v1, :cond_21

    .line 159
    :goto_19
    if-eqz v0, :cond_b

    .line 160
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    goto :goto_b

    .line 142
    .end local v0    # "mayDrain":Z
    :cond_1f
    const/4 v0, 0x0

    goto :goto_15

    .line 146
    .restart local v0    # "mayDrain":Z
    :cond_21
    cmp-long v1, p1, v8

    if-nez v1, :cond_2e

    .line 147
    move-wide v4, p1

    .line 148
    .local v4, "u":J
    const/4 v0, 0x1

    .line 156
    :goto_27
    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/internal/util/BackpressureDrainManager;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_19

    .line 150
    .end local v4    # "u":J
    :cond_2e
    sub-long v6, v8, p1

    cmp-long v1, v2, v6

    if-lez v1, :cond_3a

    .line 151
    const-wide v4, 0x7fffffffffffffffL

    .restart local v4    # "u":J
    goto :goto_27

    .line 153
    .end local v4    # "u":J
    :cond_3a
    add-long v4, v2, p1

    .restart local v4    # "u":J
    goto :goto_27
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 98
    return-void
.end method

.method public terminate(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    if-nez v0, :cond_9

    .line 108
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 111
    :cond_9
    return-void
.end method

.method public terminateAndDrain()V
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 117
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    .line 118
    return-void
.end method

.method public terminateAndDrain(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 126
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    if-nez v0, :cond_c

    .line 127
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 129
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    .line 131
    :cond_c
    return-void
.end method
