.class public Lcom/ss/android/downloadlib/addownload/b/a;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public volatile h:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/ss/android/downloadlib/addownload/b/a;->a:J

    .line 28
    iput-wide p3, p0, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    .line 29
    iput-wide p5, p0, Lcom/ss/android/downloadlib/addownload/b/a;->c:J

    .line 30
    iput-object p7, p0, Lcom/ss/android/downloadlib/addownload/b/a;->d:Ljava/lang/String;

    .line 31
    iput-object p8, p0, Lcom/ss/android/downloadlib/addownload/b/a;->e:Ljava/lang/String;

    .line 32
    iput-object p9, p0, Lcom/ss/android/downloadlib/addownload/b/a;->f:Ljava/lang/String;

    .line 33
    iput-object p10, p0, Lcom/ss/android/downloadlib/addownload/b/a;->g:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/ss/android/downloadlib/addownload/b/a;
    .registers 5

    .line 58
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 59
    return-object v0

    .line 61
    :cond_4
    new-instance v1, Lcom/ss/android/downloadlib/addownload/b/a;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/b/a;-><init>()V

    .line 63
    :try_start_9
    const-string v2, "mDownloadId"

    invoke-static {p0, v2}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->a:J

    .line 64
    const-string v2, "mAdId"

    invoke-static {p0, v2}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    .line 65
    const-string v2, "mExtValue"

    invoke-static {p0, v2}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->c:J

    .line 66
    const-string v2, "mPackageName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->d:Ljava/lang/String;

    .line 67
    const-string v2, "mAppName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->e:Ljava/lang/String;

    .line 68
    const-string v2, "mLogExtra"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->f:Ljava/lang/String;

    .line 69
    const-string v2, "mFileName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->g:Ljava/lang/String;

    .line 70
    const-string v2, "mTimeStamp"

    invoke-static {p0, v2}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->h:J
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_49} :catch_4b

    .line 74
    nop

    .line 75
    return-object v1

    .line 71
    :catch_4b
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 5

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    :try_start_5
    const-string v1, "mDownloadId"

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/b/a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 44
    const-string v1, "mAdId"

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 45
    const-string v1, "mExtValue"

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/b/a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    const-string v1, "mPackageName"

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v1, "mAppName"

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v1, "mLogExtra"

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v1, "mFileName"

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v1, "mTimeStamp"

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/b/a;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3d} :catch_3e

    .line 53
    goto :goto_42

    .line 51
    :catch_3e
    move-exception v1

    .line 52
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    :goto_42
    return-object v0
.end method
