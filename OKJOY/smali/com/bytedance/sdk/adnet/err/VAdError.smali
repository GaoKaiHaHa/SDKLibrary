.class public Lcom/bytedance/sdk/adnet/err/VAdError;
.super Ljava/lang/Exception;
.source "VAdError.java"


# instance fields
.field private a:J

.field public final networkResponse:Lcom/bytedance/sdk/adnet/core/j;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/j;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/j;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/j;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/j;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/j;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/j;

    .line 50
    return-void
.end method


# virtual methods
.method public getNetworkTimeMs()J
    .registers 3

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->a:J

    return-wide v0
.end method

.method public setNetworkTimeMs(J)V
    .registers 4

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->a:J

    .line 54
    return-void
.end method
