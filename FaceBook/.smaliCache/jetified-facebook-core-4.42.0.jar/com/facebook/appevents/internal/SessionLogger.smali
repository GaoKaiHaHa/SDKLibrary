.class Lcom/facebook/appevents/internal/SessionLogger;
.super Ljava/lang/Object;
.source "SessionLogger.java"


# static fields
.field private static final INACTIVE_SECONDS_QUANTA:[J

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/facebook/appevents/internal/SessionLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/SessionLogger;->TAG:Ljava/lang/String;

    .line 36
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_12

    sput-object v0, Lcom/facebook/appevents/internal/SessionLogger;->INACTIVE_SECONDS_QUANTA:[J

    return-void

    :array_12
    .array-data 8
        0x493e0
        0xdbba0
        0x1b7740
        0x36ee80
        0x1499700
        0x2932e00
        0x5265c00
        0xa4cb800
        0xf731400
        0x240c8400
        0x48190800
        0x6c258c00
        0x90321000L
        0x134fd9000L
        0x1cf7c5800L
        0x269fb2000L
        0x30479e800L
        0x39ef8b000L
        0x757b12c00L
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getQuantaIndex(J)I
    .registers 6
    .param p0, "timeBetweenSessions"    # J

    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "quantaIndex":I
    :goto_1
    sget-object v1, Lcom/facebook/appevents/internal/SessionLogger;->INACTIVE_SECONDS_QUANTA:[J

    array-length v2, v1

    if-ge v0, v2, :cond_f

    aget-wide v2, v1, v0

    cmp-long v1, v2, p0

    if-gez v1, :cond_f

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_f
    return v0
.end method

.method public static logActivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;)V
    .registers 8
    .param p0, "activityName"    # Ljava/lang/String;
    .param p1, "sourceApplicationInfo"    # Lcom/facebook/appevents/internal/SourceApplicationInfo;
    .param p2, "appId"    # Ljava/lang/String;

    .line 64
    if-eqz p1, :cond_7

    .line 65
    invoke-virtual {p1}, Lcom/facebook/appevents/internal/SourceApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    const-string v0, "Unclassified"

    .line 68
    .local v0, "sourAppInfoStr":Ljava/lang/String;
    :goto_9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v1, "eventParams":Landroid/os/Bundle;
    const-string v2, "fb_mobile_launch_source"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v2, Lcom/facebook/appevents/internal/InternalAppEventsLogger;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/facebook/appevents/internal/InternalAppEventsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 76
    .local v2, "logger":Lcom/facebook/appevents/AppEventsLogger;
    const-string v3, "fb_mobile_activate_app"

    invoke-virtual {v2, v3, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 77
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v3

    sget-object v4, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v3, v4, :cond_29

    .line 78
    invoke-virtual {v2}, Lcom/facebook/appevents/AppEventsLogger;->flush()V

    .line 80
    :cond_29
    return-void
.end method

.method private static logClockSkewEvent()V
    .registers 3

    .line 132
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v1, Lcom/facebook/appevents/internal/SessionLogger;->TAG:Ljava/lang/String;

    const-string v2, "Clock skew detected"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static logDeactivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V
    .registers 14
    .param p0, "activityName"    # Ljava/lang/String;
    .param p1, "sessionInfo"    # Lcom/facebook/appevents/internal/SessionInfo;
    .param p2, "appId"    # Ljava/lang/String;

    .line 87
    nop

    .line 88
    invoke-virtual {p1}, Lcom/facebook/appevents/internal/SessionInfo;->getDiskRestoreTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 89
    .local v0, "interruptionDurationMillis":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_23

    .line 90
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 91
    invoke-static {}, Lcom/facebook/appevents/internal/SessionLogger;->logClockSkewEvent()V

    .line 94
    :cond_23
    invoke-virtual {p1}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 95
    .local v1, "sessionLength":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-gez v2, :cond_3a

    .line 96
    invoke-static {}, Lcom/facebook/appevents/internal/SessionLogger;->logClockSkewEvent()V

    .line 97
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 100
    :cond_3a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v2, "eventParams":Landroid/os/Bundle;
    nop

    .line 103
    invoke-virtual {p1}, Lcom/facebook/appevents/internal/SessionInfo;->getInterruptionCount()I

    move-result v3

    .line 101
    const-string v4, "fb_mobile_app_interruptions"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/facebook/appevents/internal/SessionLogger;->getQuantaIndex(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 106
    const-string v5, "session_quanta_%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 104
    const-string v4, "fb_mobile_time_between_sessions"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/facebook/appevents/internal/SessionInfo;->getSourceApplicationInfo()Lcom/facebook/appevents/internal/SourceApplicationInfo;

    move-result-object v3

    .line 111
    .local v3, "sourceApplicationInfo":Lcom/facebook/appevents/internal/SourceApplicationInfo;
    if-eqz v3, :cond_73

    .line 112
    invoke-virtual {v3}, Lcom/facebook/appevents/internal/SourceApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_75

    :cond_73
    const-string v4, "Unclassified"

    .line 114
    .local v4, "sourAppInfoStr":Ljava/lang/String;
    :goto_75
    const-string v5, "fb_mobile_launch_source"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    nop

    .line 119
    invoke-virtual {p1}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 118
    const-string v9, "_logTime"

    invoke-virtual {v2, v9, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 121
    new-instance v5, Lcom/facebook/appevents/internal/InternalAppEventsLogger;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p2, v6}, Lcom/facebook/appevents/internal/InternalAppEventsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 127
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    div-long/2addr v9, v7

    long-to-double v6, v9

    .line 125
    const-string v8, "fb_mobile_deactivate_app"

    invoke-virtual {v5, v8, v6, v7, v2}, Lcom/facebook/appevents/internal/InternalAppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 129
    return-void
.end method
