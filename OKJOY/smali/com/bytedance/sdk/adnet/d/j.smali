.class public Lcom/bytedance/sdk/adnet/d/j;
.super Landroid/os/Handler;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/d/j$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bytedance/sdk/adnet/d/j$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/bytedance/sdk/adnet/d/j$a;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/d/j;->a:Ljava/lang/ref/WeakReference;

    .line 24
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/d/j$a;

    .line 29
    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    .line 30
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/adnet/d/j$a;->a(Landroid/os/Message;)V

    .line 31
    :cond_f
    return-void
.end method
