.class final Lcom/anythink/network/toutiao/TTATInitManager$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATInitManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATInitManager$1;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATInitManager$1;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInitManager$1$1;->a:Lcom/anythink/network/toutiao/TTATInitManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager$1$1;->a:Lcom/anythink/network/toutiao/TTATInitManager$1;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATInitManager$1;->f:Lcom/anythink/network/toutiao/TTATInitManager;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInitManager$1$1;->a:Lcom/anythink/network/toutiao/TTATInitManager$1;

    iget-object v1, v1, Lcom/anythink/network/toutiao/TTATInitManager$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Lcom/anythink/network/toutiao/TTATInitManager;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager$1$1;->a:Lcom/anythink/network/toutiao/TTATInitManager$1;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATInitManager$1;->d:Lcom/anythink/network/toutiao/TTATInitManager$a;

    if-eqz v0, :cond_18

    .line 104
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager$1$1;->a:Lcom/anythink/network/toutiao/TTATInitManager$1;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATInitManager$1;->d:Lcom/anythink/network/toutiao/TTATInitManager$a;

    invoke-interface {v0}, Lcom/anythink/network/toutiao/TTATInitManager$a;->onFinish()V

    .line 106
    :cond_18
    return-void
.end method
