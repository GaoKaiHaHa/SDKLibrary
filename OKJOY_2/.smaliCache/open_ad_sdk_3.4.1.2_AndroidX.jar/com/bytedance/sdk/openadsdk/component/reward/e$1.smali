.class Lcom/bytedance/sdk/openadsdk/component/reward/e$1;
.super Ljava/lang/Object;
.source "RewardVideoCache.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/e;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3

    .line 77
    if-eqz p1, :cond_d

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 79
    const-string v0, "sp_reward_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 81
    :cond_d
    const/4 p1, 0x0

    return p1
.end method
