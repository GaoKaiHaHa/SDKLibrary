.class public final Lcom/bytedance/sdk/a/b/a/e/o;
.super Ljava/io/IOException;
.source "StreamResetException.java"


# instance fields
.field public final a:Lcom/bytedance/sdk/a/b/a/e/b;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 4

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stream was reset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/o;->a:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 29
    return-void
.end method