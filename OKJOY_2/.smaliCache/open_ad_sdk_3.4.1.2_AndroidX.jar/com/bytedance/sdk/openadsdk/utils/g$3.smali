.class final Lcom/bytedance/sdk/openadsdk/utils/g$3;
.super Ljava/lang/Object;
.source "CommonDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 195
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/g$3;->a:Ljava/lang/String;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/utils/g$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 199
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/g;->a()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/g$3;->a:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/utils/g$3;->b:I

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->broadcastDialogListener(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 201
    goto :goto_d

    .line 200
    :catchall_c
    move-exception v0

    .line 202
    :goto_d
    return-void
.end method
