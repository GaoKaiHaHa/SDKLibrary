.class public final Lcom/bytedance/tea/crash/h;
.super Ljava/lang/Object;
.source "NpthBus.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:J

.field private static c:Ljava/lang/String;

.field private static d:Z

.field private static e:Lcom/bytedance/tea/crash/e/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static f:Lcom/bytedance/tea/crash/e/b;

.field private static g:Lcom/bytedance/tea/crash/b;

.field private static volatile h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lcom/bytedance/tea/crash/e/j;

.field private static volatile j:I

.field private static volatile k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "default"

    sput-object v0, Lcom/bytedance/tea/crash/h;->c:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/tea/crash/h;->d:Z

    .line 28
    new-instance v0, Lcom/bytedance/tea/crash/e/b;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/e/b;-><init>()V

    sput-object v0, Lcom/bytedance/tea/crash/h;->f:Lcom/bytedance/tea/crash/e/b;

    .line 30
    new-instance v0, Lcom/bytedance/tea/crash/b;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/b;-><init>()V

    sput-object v0, Lcom/bytedance/tea/crash/h;->g:Lcom/bytedance/tea/crash/b;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/tea/crash/h;->i:Lcom/bytedance/tea/crash/e/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/tea/crash/e/a;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/bytedance/tea/crash/h;->e:Lcom/bytedance/tea/crash/e/a;

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/bytedance/tea/crash/d;)V
    .registers 4

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/tea/crash/h;->b:J

    .line 64
    sput-object p0, Lcom/bytedance/tea/crash/h;->a:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/bytedance/tea/crash/e/a;

    sget-object v1, Lcom/bytedance/tea/crash/h;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/tea/crash/e/a;-><init>(Landroid/content/Context;Lcom/bytedance/tea/crash/d;)V

    sput-object v0, Lcom/bytedance/tea/crash/h;->e:Lcom/bytedance/tea/crash/e/a;

    .line 66
    return-void
.end method

.method public static b()Lcom/bytedance/tea/crash/b;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/bytedance/tea/crash/h;->g:Lcom/bytedance/tea/crash/b;

    return-object v0
.end method

.method public static c()Lcom/bytedance/tea/crash/e/j;
    .registers 3

    .prologue
    .line 48
    sget-object v0, Lcom/bytedance/tea/crash/h;->i:Lcom/bytedance/tea/crash/e/j;

    if-nez v0, :cond_11

    .line 49
    const-class v1, Lcom/bytedance/tea/crash/h;

    monitor-enter v1

    .line 50
    :try_start_7
    new-instance v0, Lcom/bytedance/tea/crash/e/j;

    sget-object v2, Lcom/bytedance/tea/crash/h;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/bytedance/tea/crash/e/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/tea/crash/h;->i:Lcom/bytedance/tea/crash/e/j;

    .line 51
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    .line 53
    :cond_11
    sget-object v0, Lcom/bytedance/tea/crash/h;->i:Lcom/bytedance/tea/crash/e/j;

    return-object v0

    .line 51
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public static d()Landroid/content/Context;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/bytedance/tea/crash/h;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static e()Lcom/bytedance/tea/crash/e/b;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/bytedance/tea/crash/h;->f:Lcom/bytedance/tea/crash/e/b;

    return-object v0
.end method

.method public static f()J
    .registers 2

    .prologue
    .line 77
    sget-wide v0, Lcom/bytedance/tea/crash/h;->b:J

    return-wide v0
.end method

.method public static g()Ljava/lang/String;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/bytedance/tea/crash/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Z
    .registers 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/bytedance/tea/crash/h;->d:Z

    return v0
.end method

.method public static i()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lcom/bytedance/tea/crash/h;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static j()I
    .registers 1

    .prologue
    .line 138
    sget v0, Lcom/bytedance/tea/crash/h;->j:I

    return v0
.end method

.method public static k()Ljava/lang/String;
    .registers 1

    .prologue
    .line 142
    sget-object v0, Lcom/bytedance/tea/crash/h;->k:Ljava/lang/String;

    return-object v0
.end method
