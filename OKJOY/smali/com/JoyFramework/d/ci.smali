.class Lcom/JoyFramework/d/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ce$a;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/JoyFramework/d/ce;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/ce;Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 516
    iput-object p1, p0, Lcom/JoyFramework/d/ci;->b:Lcom/JoyFramework/d/ce;

    iput-object p2, p0, Lcom/JoyFramework/d/ci;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/JoyFramework/d/ce$b;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 519
    iget-object v0, p0, Lcom/JoyFramework/d/ci;->b:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->f(Lcom/JoyFramework/d/ce;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 520
    iget-object v0, p0, Lcom/JoyFramework/d/ci;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/JoyFramework/d/ce$b;->a()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 522
    :cond_14
    iget-object v0, p0, Lcom/JoyFramework/d/ci;->b:Lcom/JoyFramework/d/ce;

    invoke-static {v0, v3}, Lcom/JoyFramework/d/ce;->b(Lcom/JoyFramework/d/ce;Z)Z

    .line 523
    return-void
.end method