.class Lcom/bytedance/sdk/openadsdk/component/reward/a$2;
.super Ljava/lang/Object;
.source "FullScreenVideoCache.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/a;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/a$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4

    .prologue
    .line 119
    if-eqz p1, :cond_d

    .line 120
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v1, "full_screen_video_cache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 123
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
