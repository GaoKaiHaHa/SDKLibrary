.class Lcom/bytedance/sdk/openadsdk/g/a/b$3;
.super Ljava/lang/Object;
.source "GifLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/g/a/b;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/g/a/b$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/g/a/a$a;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/g/a/b$c;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/g/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/a/b;Lcom/bytedance/sdk/openadsdk/g/a/b$b;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/a$a;Lcom/bytedance/sdk/openadsdk/g/a/b$c;)V
    .registers 6

    .prologue
    .line 83
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$3;->e:Lcom/bytedance/sdk/openadsdk/g/a/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$3;->a:Lcom/bytedance/sdk/openadsdk/g/a/b$b;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$3;->c:Lcom/bytedance/sdk/openadsdk/g/a/a$a;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$3;->d:Lcom/bytedance/sdk/openadsdk/g/a/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$3;->a:Lcom/bytedance/sdk/openadsdk/g/a/b$b;

    if-eqz v0, :cond_f

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$3;->a:Lcom/bytedance/sdk/openadsdk/g/a/b$b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$3;->c:Lcom/bytedance/sdk/openadsdk/g/a/a$a;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/g/a/a$a;->a:[B

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/b$b;->a(Ljava/lang/String;[B)V

    .line 89
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$3;->a:Lcom/bytedance/sdk/openadsdk/g/a/b$b;

    if-eqz v0, :cond_1a

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$3;->a:Lcom/bytedance/sdk/openadsdk/g/a/b$b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$3;->d:Lcom/bytedance/sdk/openadsdk/g/a/b$c;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/b$b;->a(Lcom/bytedance/sdk/openadsdk/g/a/b$c;)V

    .line 92
    :cond_1a
    return-void
.end method
