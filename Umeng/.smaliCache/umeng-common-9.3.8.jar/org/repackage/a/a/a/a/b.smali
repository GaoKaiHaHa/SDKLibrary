.class public Lorg/repackage/a/a/a/a/b;
.super Ljava/lang/Object;
.source "OpenIDHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/repackage/a/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/repackage/a/a/a/a/c;


# direct methods
.method public constructor <init>(Lorg/repackage/a/a/a/a/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/repackage/a/a/a/a/b;->a:Lorg/repackage/a/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lorg/repackage/a/a/a/a/b;->a:Lorg/repackage/a/a/a/a/c;

    invoke-static {p2}, Lorg/repackage/a/a/a/a$a;->a(Landroid/os/IBinder;)Lorg/repackage/a/a/a/a;

    move-result-object p2

    .line 2
    iput-object p2, p1, Lorg/repackage/a/a/a/a/c;->a:Lorg/repackage/a/a/a/a;

    .line 3
    iget-object p1, p0, Lorg/repackage/a/a/a/a/b;->a:Lorg/repackage/a/a/a/a/c;

    .line 4
    iget-object p1, p1, Lorg/repackage/a/a/a/a/c;->d:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_d
    iget-object p2, p0, Lorg/repackage/a/a/a/a/b;->a:Lorg/repackage/a/a/a/a/c;

    .line 7
    iget-object p2, p2, Lorg/repackage/a/a/a/a/c;->d:Ljava/lang/Object;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 9
    monitor-exit p1

    return-void

    :catchall_16
    move-exception p2

    monitor-exit p1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lorg/repackage/a/a/a/a/b;->a:Lorg/repackage/a/a/a/a/c;

    .line 2
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/repackage/a/a/a/a/c;->a:Lorg/repackage/a/a/a/a;

    return-void
.end method