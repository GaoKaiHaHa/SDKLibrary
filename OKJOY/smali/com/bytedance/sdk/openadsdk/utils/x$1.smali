.class final Lcom/bytedance/sdk/openadsdk/utils/x$1;
.super Ljava/lang/Object;
.source "OAIDHelper.java"

# interfaces
.implements Lcom/bytedance/embedapplog/IOaidObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/x;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOaidLoaded(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V
    .registers 3
    .param p1    # Lcom/bytedance/embedapplog/IOaidObserver$Oaid;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    :try_start_0
    iget-object v0, p1, Lcom/bytedance/embedapplog/IOaidObserver$Oaid;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 41
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Z)Z

    .line 42
    iget-object v0, p1, Lcom/bytedance/embedapplog/IOaidObserver$Oaid;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/x;->b()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_15

    .line 47
    :cond_14
    :goto_14
    return-void

    .line 45
    :catch_15
    move-exception v0

    goto :goto_14
.end method
