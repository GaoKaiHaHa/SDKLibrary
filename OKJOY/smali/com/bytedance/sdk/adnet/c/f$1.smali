.class Lcom/bytedance/sdk/adnet/c/f$1;
.super Landroid/os/Handler;
.source "TNCManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/adnet/c/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/c/f;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 441
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/c/f$1;->a:Lcom/bytedance/sdk/adnet/c/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 444
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 452
    :goto_5
    return-void

    .line 446
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 447
    :goto_b
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/c/f$1;->a:Lcom/bytedance/sdk/adnet/c/f;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/adnet/c/f;->a(Lcom/bytedance/sdk/adnet/c/f;Z)V

    goto :goto_5

    .line 446
    :cond_11
    const/4 v0, 0x1

    goto :goto_b

    .line 444
    nop

    :pswitch_data_14
    .packed-switch 0x2710
        :pswitch_6
    .end packed-switch
.end method