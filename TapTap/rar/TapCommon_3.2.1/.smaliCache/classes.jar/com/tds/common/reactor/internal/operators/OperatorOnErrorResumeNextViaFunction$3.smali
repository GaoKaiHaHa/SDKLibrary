.class final Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$3;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;->withException(Lcom/tds/common/reactor/Observable;)Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/functions/Func1<",
        "Ljava/lang/Throwable;",
        "Lcom/tds/common/reactor/Observable<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$other:Lcom/tds/common/reactor/Observable;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/Observable;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$3;->val$other:Lcom/tds/common/reactor/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Throwable;)Lcom/tds/common/reactor/Observable;
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "+TT;>;"
        }
    .end annotation

    .line 73
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_7

    .line 74
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$3;->val$other:Lcom/tds/common/reactor/Observable;

    return-object v0

    .line 76
    :cond_7
    invoke-static {p1}, Lcom/tds/common/reactor/Observable;->error(Ljava/lang/Throwable;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 70
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$3;->call(Ljava/lang/Throwable;)Lcom/tds/common/reactor/Observable;

    move-result-object p1

    return-object p1
.end method