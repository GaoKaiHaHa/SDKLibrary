.class final Lcom/anythink/china/common/a$2$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/a$2;->a(Lcom/anythink/china/common/a/c;JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/common/a/c;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Lcom/anythink/china/common/a$2;


# direct methods
.method constructor <init>(Lcom/anythink/china/common/a$2;Lcom/anythink/china/common/a/c;IJJ)V
    .registers 8

    .prologue
    .line 259
    iput-object p1, p0, Lcom/anythink/china/common/a$2$5;->e:Lcom/anythink/china/common/a$2;

    iput-object p2, p0, Lcom/anythink/china/common/a$2$5;->a:Lcom/anythink/china/common/a/c;

    iput p3, p0, Lcom/anythink/china/common/a$2$5;->b:I

    iput-wide p4, p0, Lcom/anythink/china/common/a$2$5;->c:J

    iput-wide p6, p0, Lcom/anythink/china/common/a$2$5;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 262
    iget-object v0, p0, Lcom/anythink/china/common/a$2$5;->e:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->c(Lcom/anythink/china/common/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$2$5;->a:Lcom/anythink/china/common/a/c;

    iget-object v1, v1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/anythink/china/common/a$2$5;->e:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$2$5;->a:Lcom/anythink/china/common/a/c;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/b/a;->d(Lcom/anythink/china/common/a/c;)V

    .line 265
    iget v0, p0, Lcom/anythink/china/common/a$2$5;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_60

    .line 266
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a$2$5;->a:Lcom/anythink/china/common/a/c;

    iget-object v2, v2, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") pause download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/anythink/china/common/a$2$5;->e:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$2$5;->a:Lcom/anythink/china/common/a/c;

    iget-wide v2, p0, Lcom/anythink/china/common/a$2$5;->c:J

    iget-wide v4, p0, Lcom/anythink/china/common/a$2$5;->d:J

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/c;JJ)V

    .line 271
    iget-object v0, p0, Lcom/anythink/china/common/a$2$5;->e:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-virtual {v0}, Lcom/anythink/china/common/a;->b()V

    .line 276
    :cond_5f
    :goto_5f
    return-void

    .line 272
    :cond_60
    iget v0, p0, Lcom/anythink/china/common/a$2$5;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5f

    .line 273
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a$2$5;->a:Lcom/anythink/china/common/a/c;

    iget-object v2, v2, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") stop download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f
.end method
