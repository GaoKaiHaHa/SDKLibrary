.class public final Lcom/mintegral/msdk/videocommon/c/b;
.super Lcom/mintegral/msdk/base/common/net/a;
.source "RewardSettingRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/net/a;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected final a(Lcom/mintegral/msdk/base/common/net/l;)V
    .registers 6

    .prologue
    .line 25
    :try_start_0
    invoke-super {p0, p1}, Lcom/mintegral/msdk/base/common/net/a;->a(Lcom/mintegral/msdk/base/common/net/l;)V

    .line 26
    const-string v0, "platform"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "os_version"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "package_name"

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/c/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/c;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "app_version_name"

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/c/b;->b:Landroid/content/Context;

    .line 30
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/c;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "app_version_code"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/c/b;->b:Landroid/content/Context;

    .line 32
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/c;->k(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "orientation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/c/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/c;->i(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "model"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "brand"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "gaid"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "mnc"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "mcc"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v0

    .line 40
    const-string v1, "network_type"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "network_str"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/c/b;->b:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/mintegral/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "language"

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/c/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "timezone"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "useragent"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "sdk_version"

    const-string v1, "MAL_10.2.42"

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "gp_version"

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/c/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/c;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "screen_size"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/c/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/c;->n(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/c/b;->b:Landroid/content/Context;

    .line 48
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/c;->o(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcom/mintegral/msdk/base/common/net/a/e;->b(Lcom/mintegral/msdk/base/common/net/l;)V

    .line 50
    const-string v0, "is_clever"

    sget-object v1, Lcom/mintegral/msdk/base/common/a;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10a} :catch_10b

    .line 54
    :goto_10a
    return-void

    .line 52
    :catch_10b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10a
.end method