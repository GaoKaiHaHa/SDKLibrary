.class Lcom/bytedance/embedapplog/a/i;
.super Lcom/bytedance/embedapplog/a/c;
.source "SourceFile"


# static fields
.field static final b:[J

.field static final c:[J

.field private static final d:[J


# instance fields
.field private e:Lcom/bytedance/embedapplog/b/i;

.field private f:Lcom/bytedance/embedapplog/a/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/bytedance/embedapplog/a/i;->b:[J

    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_40

    sput-object v0, Lcom/bytedance/embedapplog/a/i;->c:[J

    .line 32
    const/16 v0, 0xa

    new-array v0, v0, [J

    fill-array-data v0, :array_5c

    sput-object v0, Lcom/bytedance/embedapplog/a/i;->d:[J

    return-void

    .line 24
    nop

    :array_1c
    .array-data 8
        0xea60
        0xea60
        0xea60
        0x1d4c0
        0x1d4c0
        0x1d4c0
        0x2bf20
        0x2bf20
    .end array-data

    .line 28
    :array_40
    .array-data 8
        0x2bf20
        0x2bf20
        0x57e40
        0x57e40
        0x83d60
        0x83d60
    .end array-data

    .line 32
    :array_5c
    .array-data 8
        0x2710
        0x2710
        0x4e20
        0x4e20
        0xea60
        0x1770
        0x2bf20
        0x2bf20
        0x83d60
        0x83d60
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/a/k;)V
    .registers 4

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/a/c;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lcom/bytedance/embedapplog/a/i;->e:Lcom/bytedance/embedapplog/b/i;

    .line 44
    iput-object p3, p0, Lcom/bytedance/embedapplog/a/i;->f:Lcom/bytedance/embedapplog/a/k;

    .line 45
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method b()J
    .registers 5

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/i;->e:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->p()J

    move-result-wide v2

    iget-object v0, p0, Lcom/bytedance/embedapplog/a/i;->f:Lcom/bytedance/embedapplog/a/k;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/a/k;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x1499700

    :goto_11
    int-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0

    :cond_14
    const v0, 0x2932e00

    goto :goto_11
.end method

.method c()[J
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/i;->e:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->o()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 72
    sget-object v0, Lcom/bytedance/embedapplog/a/i;->c:[J

    .line 74
    :goto_f
    return-object v0

    .line 62
    :pswitch_10
    sget-object v0, Lcom/bytedance/embedapplog/a/i;->d:[J

    goto :goto_f

    .line 65
    :pswitch_13
    sget-object v0, Lcom/bytedance/embedapplog/a/i;->c:[J

    goto :goto_f

    .line 68
    :pswitch_16
    sget-object v0, Lcom/bytedance/embedapplog/a/i;->b:[J

    goto :goto_f

    .line 60
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_10
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method d()Z
    .registers 7

    .prologue
    .line 79
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/i;->e:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_60

    .line 82
    const-string v2, "magic_tag"

    const-string v3, "ss_app_log"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v2, "header"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "_gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 85
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/i;->e:Lcom/bytedance/embedapplog/b/i;

    .line 86
    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/embedapplog/c/a;->a()Lcom/bytedance/embedapplog/util/UriConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/util/UriConfig;->getRegisterUri()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getIAppParam()Lcom/bytedance/embedapplog/IAppParam;

    move-result-object v5

    .line 85
    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/embedapplog/c/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/embedapplog/IAppParam;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/c/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_64

    .line 88
    const-string v1, "device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string v2, "install_id"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    const-string v3, "ssid"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    iget-object v4, p0, Lcom/bytedance/embedapplog/a/i;->e:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/bytedance/embedapplog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 97
    :goto_5f
    return v0

    .line 95
    :cond_60
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 97
    :cond_64
    const/4 v0, 0x0

    goto :goto_5f
.end method

.method e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    const-string v0, "r"

    return-object v0
.end method
