.class Lcom/bytedance/sdk/openadsdk/component/splash/a$2;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/a;)V
    .registers 2

    .line 521
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4

    .line 524
    const/4 v0, 0x0

    if-eqz p1, :cond_19

    .line 525
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 526
    const-string v1, "splash_ad_cache"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "splash_video_cache"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_17
    const/4 v0, 0x1

    :cond_18
    return v0

    .line 528
    :cond_19
    return v0
.end method
