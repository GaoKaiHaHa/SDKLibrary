.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportWifiOnly"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 210
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;->mContext:Landroid/content/Context;

    .line 211
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;->mContext:Landroid/content/Context;

    .line 212
    return-void
.end method


# virtual methods
.method public shouldSendMessage(Z)Z
    .registers 2

    .line 216
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->isWiFiAvailable(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
