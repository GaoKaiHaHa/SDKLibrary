.class Lcom/JoyFramework/module/b/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/remote/b/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/JoyFramework/remote/b/c/c",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/JoyFramework/module/b/d/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/b/d/c;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 90
    iput-object p1, p0, Lcom/JoyFramework/module/b/d/e;->b:Lcom/JoyFramework/module/b/d/c;

    iput-object p2, p0, Lcom/JoyFramework/module/b/d/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/JoyFramework/module/b/d/e;->b:Lcom/JoyFramework/module/b/d/c;

    iget-object v0, v0, Lcom/JoyFramework/module/b/d/c;->a:Lcom/JoyFramework/module/b/b/b$b;

    invoke-interface {v0, p1}, Lcom/JoyFramework/module/b/b/b$b;->a(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 99
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/ah;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ah;

    .line 100
    iget-object v1, p0, Lcom/JoyFramework/module/b/d/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/ah;->b(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/JoyFramework/module/b/d/e;->b:Lcom/JoyFramework/module/b/d/c;

    iget-object v1, v1, Lcom/JoyFramework/module/b/d/c;->a:Lcom/JoyFramework/module/b/b/b$b;

    invoke-interface {v1, v0}, Lcom/JoyFramework/module/b/b/b$b;->a(Lcom/JoyFramework/remote/bean/ah;)V

    .line 102
    return-void
.end method
