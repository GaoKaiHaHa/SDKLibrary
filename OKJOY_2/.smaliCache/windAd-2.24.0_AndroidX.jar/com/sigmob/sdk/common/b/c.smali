.class public Lcom/sigmob/sdk/common/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/b/c$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:Ljava/util/concurrent/TimeUnit;

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/sigmob/sdk/common/b/c;->a:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/sigmob/sdk/common/b/c;->b:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sigmob/sdk/common/b/c;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()I
    .registers 1

    sget v0, Lcom/sigmob/sdk/common/b/c;->a:I

    return v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/common/b/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b()Ljava/util/concurrent/TimeUnit;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/b/c;->b:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method
