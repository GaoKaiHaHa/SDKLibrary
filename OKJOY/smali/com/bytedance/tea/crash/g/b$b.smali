.class Lcom/bytedance/tea/crash/g/b$b;
.super Lcom/bytedance/tea/crash/g/b$a;
.source "DebugMemInfoCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/crash/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/tea/crash/g/b$a;-><init>(Lcom/bytedance/tea/crash/g/b$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/tea/crash/g/b$1;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/bytedance/tea/crash/g/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Debug$MemoryInfo;)I
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v0

    return v0
.end method

.method public b(Landroid/os/Debug$MemoryInfo;)I
    .registers 3

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v0

    return v0
.end method

.method public c(Landroid/os/Debug$MemoryInfo;)I
    .registers 3

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v0

    return v0
.end method