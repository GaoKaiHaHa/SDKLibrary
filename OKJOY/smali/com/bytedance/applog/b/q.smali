.class Lcom/bytedance/applog/b/q;
.super Lcom/bytedance/applog/b/c;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 20
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/applog/b/c;-><init>(ZZ)V

    .line 21
    return-void
.end method

.method private a()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 46
    :try_start_1
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_13

    move-result v1

    if-lez v1, :cond_12

    const/4 v0, 0x1

    .line 51
    :cond_12
    :goto_12
    return v0

    .line 48
    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 66
    invoke-direct {p0}, Lcom/bytedance/applog/b/q;->d()Ljava/lang/String;

    move-result-object p1

    .line 68
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "emotionui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_1d
    return v0

    :cond_1e
    invoke-direct {p0}, Lcom/bytedance/applog/b/q;->c()Z

    move-result v0

    goto :goto_1d
.end method

.method private b()Z
    .registers 3

    .prologue
    .line 55
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v1, "Flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_12
    const-string v0, "flyme"

    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    .line 55
    :goto_1d
    return v0

    .line 56
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private c()Z
    .registers 3

    .prologue
    .line 60
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_16
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    .line 60
    :goto_2d
    return v0

    .line 61
    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private d()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 76
    .line 79
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v2, "getprop ro.build.version.emui"

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 80
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x400

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1b} :catch_28
    .catchall {:try_start_1 .. :try_end_1b} :catchall_38

    .line 82
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_46
    .catchall {:try_start_1b .. :try_end_1e} :catchall_43

    move-result-object v0

    .line 83
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_4b
    .catchall {:try_start_1f .. :try_end_22} :catchall_43

    .line 88
    if-eqz v2, :cond_27

    .line 90
    :try_start_24
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_3f

    .line 96
    :cond_27
    :goto_27
    return-object v0

    .line 84
    :catch_28
    move-exception v0

    move-object v2, v1

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 85
    :goto_2d
    :try_start_2d
    invoke-static {v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_43

    .line 88
    if-eqz v2, :cond_27

    .line 90
    :try_start_32
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_27

    .line 91
    :catch_36
    move-exception v1

    goto :goto_27

    .line 88
    :catchall_38
    move-exception v0

    :goto_39
    if-eqz v1, :cond_3e

    .line 90
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_41

    .line 93
    :cond_3e
    :goto_3e
    throw v0

    .line 91
    :catch_3f
    move-exception v1

    goto :goto_27

    :catch_41
    move-exception v1

    goto :goto_3e

    .line 88
    :catchall_43
    move-exception v0

    move-object v1, v2

    goto :goto_39

    .line 84
    :catch_46
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2d

    :catch_4b
    move-exception v1

    goto :goto_2d
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 5

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 26
    invoke-direct {p0}, Lcom/bytedance/applog/b/q;->a()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 27
    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_12
    :goto_12
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, "rom"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const/4 v0, 0x1

    return v0

    .line 28
    :cond_22
    invoke-direct {p0}, Lcom/bytedance/applog/b/q;->b()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 29
    const-string v1, "FLYME-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 31
    :cond_2e
    invoke-direct {p0}, Lcom/bytedance/applog/b/q;->d()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-direct {p0, v1}, Lcom/bytedance/applog/b/q;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 33
    const-string v2, "EMUI-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_3d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12
.end method
