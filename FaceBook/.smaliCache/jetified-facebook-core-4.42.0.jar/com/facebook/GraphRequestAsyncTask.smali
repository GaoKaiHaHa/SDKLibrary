.class public Lcom/facebook/GraphRequestAsyncTask;
.super Landroid/os/AsyncTask;
.source "GraphRequestAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/facebook/GraphResponse;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private exception:Ljava/lang/Exception;

.field private final requests:Lcom/facebook/GraphRequestBatch;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/facebook/GraphRequestAsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequestAsyncTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/GraphRequestBatch;)V
    .registers 3
    .param p1, "requests"    # Lcom/facebook/GraphRequestBatch;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/facebook/GraphRequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)V
    .registers 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Lcom/facebook/GraphRequestBatch;

    .line 112
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/facebook/GraphRequestAsyncTask;->requests:Lcom/facebook/GraphRequestBatch;

    .line 114
    iput-object p1, p0, Lcom/facebook/GraphRequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Ljava/util/Collection;)V
    .registers 4
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/GraphRequest;>;"
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p2}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/GraphRequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)V

    .line 101
    return-void
.end method

.method public varargs constructor <init>(Ljava/net/HttpURLConnection;[Lcom/facebook/GraphRequest;)V
    .registers 4
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # [Lcom/facebook/GraphRequest;

    .line 87
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p2}, Lcom/facebook/GraphRequestBatch;-><init>([Lcom/facebook/GraphRequest;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/GraphRequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/GraphRequest;>;"
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p1}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/GraphRequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)V

    .line 65
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/GraphRequest;)V
    .registers 4
    .param p1, "requests"    # [Lcom/facebook/GraphRequest;

    .line 54
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p1}, Lcom/facebook/GraphRequestBatch;-><init>([Lcom/facebook/GraphRequest;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/GraphRequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 39
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequestAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/facebook/GraphRequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_b

    .line 171
    iget-object v0, p0, Lcom/facebook/GraphRequestAsyncTask;->requests:Lcom/facebook/GraphRequestBatch;

    invoke-virtual {v0}, Lcom/facebook/GraphRequestBatch;->executeAndWait()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 173
    :cond_b
    iget-object v1, p0, Lcom/facebook/GraphRequestAsyncTask;->requests:Lcom/facebook/GraphRequestBatch;

    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 175
    :catch_12
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/facebook/GraphRequestAsyncTask;->exception:Ljava/lang/Exception;

    .line 177
    const/4 v1, 0x0

    return-object v1
.end method

.method protected final getException()Ljava/lang/Exception;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/facebook/GraphRequestAsyncTask;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method protected final getRequests()Lcom/facebook/GraphRequestBatch;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/facebook/GraphRequestAsyncTask;->requests:Lcom/facebook/GraphRequestBatch;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 39
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequestAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/facebook/GraphRequestAsyncTask;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_1c

    .line 161
    sget-object v1, Lcom/facebook/GraphRequestAsyncTask;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 161
    const-string v0, "onPostExecute: exception encountered during request: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1c
    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .line 139
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 140
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 141
    sget-object v0, Lcom/facebook/GraphRequestAsyncTask;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "execute async task: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_1a
    iget-object v0, p0, Lcom/facebook/GraphRequestAsyncTask;->requests:Lcom/facebook/GraphRequestBatch;

    invoke-virtual {v0}, Lcom/facebook/GraphRequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Landroid/os/HandlerThread;

    if-eqz v0, :cond_30

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .local v0, "handler":Landroid/os/Handler;
    goto :goto_39

    .line 150
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 152
    .restart local v0    # "handler":Landroid/os/Handler;
    :goto_39
    iget-object v1, p0, Lcom/facebook/GraphRequestAsyncTask;->requests:Lcom/facebook/GraphRequestBatch;

    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    .line 154
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_3e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    const-string v1, "{RequestAsyncTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    const-string v1, " connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string v1, ", requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequestAsyncTask;->requests:Lcom/facebook/GraphRequestBatch;

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    return-object v0
.end method
