.class Lcom/bytedance/sdk/openadsdk/component/reward/j$1;
.super Ljava/lang/Object;
.source "TTRewardVideoAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/j;->showRewardVideoAd(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/j;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/j;)V
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 179
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 183
    const-string v0, "TTRewardVideoAdImpl"

    const-string v1, "show reward video error: "

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    return-void
.end method
