.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;
.super Ljava/lang/Object;
.source "BinderPool.java"


# static fields
.field private static volatile c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/openadsdk/IBinderPool;

.field private d:Ljava/util/concurrent/CountDownLatch;

.field private final e:Ljava/lang/Object;

.field private f:J

.field private g:Landroid/content/ServiceConnection;

.field private h:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->e:Ljava/lang/Object;

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->f:J

    .line 89
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->g:Landroid/content/ServiceConnection;

    .line 112
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->h:Landroid/os/IBinder$DeathRecipient;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a()V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Landroid/os/IBinder$DeathRecipient;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->h:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;Lcom/bytedance/sdk/openadsdk/IBinderPool;)Lcom/bytedance/sdk/openadsdk/IBinderPool;
    .registers 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->b:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;
    .registers 3

    .prologue
    .line 45
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    if-nez v0, :cond_13

    .line 46
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    monitor-enter v1

    .line 47
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    if-nez v0, :cond_12

    .line 48
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    .line 50
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 52
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    return-object v0

    .line 50
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private declared-synchronized a()V
    .registers 5

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    const-string v0, "MultiProcess"

    const-string v1, "BinderPool......connectBinderPoolService"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->d:Ljava/util/concurrent/CountDownLatch;

    .line 75
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a:Landroid/content/Context;

    const-class v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->f:J
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_37

    .line 80
    :try_start_27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2c} :catch_2e
    .catchall {:try_start_27 .. :try_end_2c} :catchall_37

    .line 84
    :goto_2c
    monitor-exit p0

    return-void

    .line 81
    :catch_2e
    move-exception v0

    .line 82
    :try_start_2f
    const-string v1, "MultiProcess"

    const-string v2, "connectBinderPoolService throws: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_37

    goto :goto_2c

    .line 73
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Lcom/bytedance/sdk/openadsdk/IBinderPool;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->b:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    return-object v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->d:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)J
    .registers 3

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->f:J

    return-wide v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/os/IBinder;
    .registers 4

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 60
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->b:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    if-eqz v1, :cond_b

    .line 61
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->b:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/IBinderPool;->queryBinder(I)Landroid/os/IBinder;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    .line 66
    :cond_b
    :goto_b
    return-object v0

    .line 63
    :catch_c
    move-exception v1

    .line 64
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method
