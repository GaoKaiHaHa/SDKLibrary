.class Landroid/support/v4/content/ModernAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/content/ModernAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/content/ModernAsyncTask;


# direct methods
.method constructor <init>(Landroid/support/v4/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V
    .registers 3

    .line 132
    .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$3;, "Landroid/support/v4/content/ModernAsyncTask.3;"
    .local p2, "x0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 5

    .line 136
    .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$3;, "Landroid/support/v4/content/ModernAsyncTask.3;"
    const-string v0, "An error occurred while executing doInBackground()"

    :try_start_2
    invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v2, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    # invokes: Landroid/support/v4/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v2, v1}, Landroid/support/v4/content/ModernAsyncTask;->access$300(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_b} :catch_26
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_b} :catch_1b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_b} :catch_13
    .catchall {:try_start_2 .. :try_end_b} :catchall_c

    .end local v1    # "result":Ljava/lang/Object;, "TResult;"
    goto :goto_2c

    .line 146
    :catchall_c
    move-exception v1

    .line 147
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 144
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_13
    move-exception v0

    .line 145
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    const/4 v2, 0x0

    # invokes: Landroid/support/v4/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Landroid/support/v4/content/ModernAsyncTask;->access$300(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    goto :goto_2c

    .line 141
    :catch_1b
    move-exception v1

    .line 142
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 139
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_26
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_2c
    nop

    .line 150
    return-void
.end method
