.class Lcom/ss/android/downloadlib/a/c$1;
.super Ljava/lang/Object;
.source "AdDownloadSecurityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ss/android/downloadlib/a/c;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a/c;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/c$1;->b:Lcom/ss/android/downloadlib/a/c;

    iput-object p2, p0, Lcom/ss/android/downloadlib/a/c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 69
    const-string v4, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    .line 70
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->d()Lcom/ss/android/a/a/a/j;

    move-result-object v0

    const/4 v1, 0x3

    .line 71
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v6, 0x0

    move-object v5, v3

    .line 70
    invoke-interface/range {v0 .. v6}, Lcom/ss/android/a/a/a/j;->a(ILandroid/content/Context;Lcom/ss/android/a/a/b/c;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 73
    invoke-static {}, Lcom/ss/android/downloadlib/g;->a()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;)Lcom/ss/android/downloadlib/a/f;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_20

    .line 75
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/f;->f()V

    .line 77
    :cond_20
    return-void
.end method
