.class Lrx/Single$5$1;
.super Lrx/SingleSubscriber;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single$5;->call(Lrx/SingleSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/SingleSubscriber",
        "<",
        "Lrx/Single",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Single$5;

.field final synthetic val$child:Lrx/SingleSubscriber;


# direct methods
.method constructor <init>(Lrx/Single$5;Lrx/SingleSubscriber;)V
    .registers 3

    .prologue
    .line 687
    iput-object p1, p0, Lrx/Single$5$1;->this$0:Lrx/Single$5;

    iput-object p2, p0, Lrx/Single$5$1;->val$child:Lrx/SingleSubscriber;

    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 696
    iget-object v0, p0, Lrx/Single$5$1;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 697
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 687
    check-cast p1, Lrx/Single;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Single$5$1;->onSuccess(Lrx/Single;)V

    return-void
.end method

.method public onSuccess(Lrx/Single;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 691
    .local p1, "innerSingle":Lrx/Single;, "Lrx/Single<+TT;>;"
    iget-object v0, p0, Lrx/Single$5$1;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {p1, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    .line 692
    return-void
.end method