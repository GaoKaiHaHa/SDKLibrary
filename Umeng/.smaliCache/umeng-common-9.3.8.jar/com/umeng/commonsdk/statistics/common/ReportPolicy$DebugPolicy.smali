.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugPolicy"
.end annotation


# instance fields
.field private final ReportInterval:J

.field private mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V
    .registers 4

    .line 305
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    .line 302
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;->ReportInterval:J

    .line 306
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;->mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 307
    return-void
.end method


# virtual methods
.method public shouldSendMessage(Z)Z
    .registers 6

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->getLastSuccessfulBuildTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long p1, v0, v2

    if-ltz p1, :cond_15

    .line 313
    const/4 p1, 0x1

    return p1

    .line 316
    :cond_15
    const/4 p1, 0x0

    return p1
.end method