.class Lcom/JoyFramework/module/point/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/point/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/point/c;)V
    .registers 2

    .prologue
    .line 798
    iput-object p1, p0, Lcom/JoyFramework/module/point/g;->a:Lcom/JoyFramework/module/point/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Lcom/JoyFramework/module/point/g;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0, p1}, Lcom/JoyFramework/module/point/c;->c(Lcom/JoyFramework/module/point/c;Lrx/Subscriber;)V

    .line 802
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 798
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/point/g;->a(Lrx/Subscriber;)V

    return-void
.end method
