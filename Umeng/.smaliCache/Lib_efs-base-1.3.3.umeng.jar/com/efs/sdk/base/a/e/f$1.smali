.class final Lcom/efs/sdk/base/a/e/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/efs/sdk/base/a/e/f;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/efs/sdk/base/a/e/f;


# direct methods
.method constructor <init>(Lcom/efs/sdk/base/a/e/f;Landroid/content/Context;)V
    .registers 3

    .line 83
    iput-object p1, p0, Lcom/efs/sdk/base/a/e/f$1;->b:Lcom/efs/sdk/base/a/e/f;

    iput-object p2, p0, Lcom/efs/sdk/base/a/e/f$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 87
    const-string v0, "efs.send_log"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/efs/sdk/base/a/e/f$1;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/efs/sdk/base/a/h/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_12

    .line 89
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_12
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "sendlock"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 93
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 97
    :cond_3d
    :goto_3d
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 100
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    .line 1021
    nop

    .line 2021
    sput-object v2, Lcom/efs/sdk/base/a/e/f;->b:Ljava/nio/channels/FileLock;

    .line 101
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tryFileLock sendlock sucess! processname: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/efs/sdk/base/a/h/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2025
    invoke-static {v0, v2, v1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    iget-object v2, p0, Lcom/efs/sdk/base/a/e/f$1;->b:Lcom/efs/sdk/base/a/e/f;

    .line 3021
    const/4 v3, 0x2

    iput v3, v2, Lcom/efs/sdk/base/a/e/f;->a:I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6e} :catch_70

    .line 104
    return-void

    .line 106
    :cond_6f
    goto :goto_3d

    .line 107
    :catch_70
    move-exception v2

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tryFileLock fail! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3025
    invoke-static {v0, v2, v1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    iget-object v0, p0, Lcom/efs/sdk/base/a/e/f$1;->b:Lcom/efs/sdk/base/a/e/f;

    .line 4021
    const/4 v1, 0x0

    iput v1, v0, Lcom/efs/sdk/base/a/e/f;->a:I

    .line 111
    return-void
.end method
