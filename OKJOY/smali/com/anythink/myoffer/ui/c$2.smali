.class final Lcom/anythink/myoffer/ui/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/ui/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/ui/c;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/ui/c;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/anythink/myoffer/ui/c$2;->a:Lcom/anythink/myoffer/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/anythink/myoffer/ui/c$2;->a:Lcom/anythink/myoffer/ui/c;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/c;->a(Lcom/anythink/myoffer/ui/c;)Lcom/anythink/myoffer/ui/c$a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 112
    iget-object v0, p0, Lcom/anythink/myoffer/ui/c$2;->a:Lcom/anythink/myoffer/ui/c;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/c;->a(Lcom/anythink/myoffer/ui/c;)Lcom/anythink/myoffer/ui/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/ui/c$a;->b()V

    .line 114
    :cond_11
    return-void
.end method
