.class final Lcom/tramini/plugin/a/a/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/a/b;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tramini/plugin/a/a/b;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/a/b;Landroid/content/Context;)V
    .registers 3

    .line 216
    iput-object p1, p0, Lcom/tramini/plugin/a/a/b$3;->b:Lcom/tramini/plugin/a/a/b;

    iput-object p2, p0, Lcom/tramini/plugin/a/a/b$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tramini/plugin/b/b;->a(Landroid/content/Context;)Lcom/tramini/plugin/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 220
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tramini/plugin/b/b;->a(Landroid/content/Context;)Lcom/tramini/plugin/b/b;

    move-result-object v0

    new-instance v1, Lcom/tramini/plugin/a/a/b$3$1;

    invoke-direct {v1, p0}, Lcom/tramini/plugin/a/a/b$3$1;-><init>(Lcom/tramini/plugin/a/a/b$3;)V

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/b/b;->a(Lcom/tramini/plugin/a/d/c;)V

    .line 235
    :cond_1a
    return-void
.end method