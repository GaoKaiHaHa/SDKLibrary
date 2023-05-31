.class public final Lrx/internal/operators/NotificationLite;
.super Ljava/lang/Object;
.source "NotificationLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/NotificationLite$OnErrorSentinel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lrx/internal/operators/NotificationLite;

.field private static final ON_COMPLETED_SENTINEL:Ljava/lang/Object;

.field private static final ON_NEXT_NULL_SENTINEL:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lrx/internal/operators/NotificationLite;

    invoke-direct {v0}, Lrx/internal/operators/NotificationLite;-><init>()V

    sput-object v0, Lrx/internal/operators/NotificationLite;->INSTANCE:Lrx/internal/operators/NotificationLite;

    .line 55
    new-instance v0, Lrx/internal/operators/NotificationLite$1;

    invoke-direct {v0}, Lrx/internal/operators/NotificationLite$1;-><init>()V

    sput-object v0, Lrx/internal/operators/NotificationLite;->ON_COMPLETED_SENTINEL:Ljava/lang/Object;

    .line 64
    new-instance v0, Lrx/internal/operators/NotificationLite$2;

    invoke-direct {v0}, Lrx/internal/operators/NotificationLite$2;-><init>()V

    sput-object v0, Lrx/internal/operators/NotificationLite;->ON_NEXT_NULL_SENTINEL:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static instance()Lrx/internal/operators/NotificationLite;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lrx/internal/operators/NotificationLite;->INSTANCE:Lrx/internal/operators/NotificationLite;

    return-object v0
.end method


# virtual methods
.method public accept(Lrx/Observer;Ljava/lang/Object;)Z
    .registers 7
    .param p2, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .local p1, "o":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    sget-object v2, Lrx/internal/operators/NotificationLite;->ON_COMPLETED_SENTINEL:Ljava/lang/Object;

    if-ne p2, v2, :cond_a

    .line 142
    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    .line 153
    .end local p2    # "n":Ljava/lang/Object;
    :goto_9
    return v0

    .line 144
    .restart local p2    # "n":Ljava/lang/Object;
    :cond_a
    sget-object v2, Lrx/internal/operators/NotificationLite;->ON_NEXT_NULL_SENTINEL:Ljava/lang/Object;

    if-ne p2, v2, :cond_14

    .line 145
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    move v0, v1

    .line 146
    goto :goto_9

    .line 147
    :cond_14
    if-eqz p2, :cond_2b

    .line 148
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lrx/internal/operators/NotificationLite$OnErrorSentinel;

    if-ne v2, v3, :cond_26

    .line 149
    check-cast p2, Lrx/internal/operators/NotificationLite$OnErrorSentinel;

    .end local p2    # "n":Ljava/lang/Object;
    iget-object v1, p2, Lrx/internal/operators/NotificationLite$OnErrorSentinel;->e:Ljava/lang/Throwable;

    invoke-interface {p1, v1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 152
    .restart local p2    # "n":Ljava/lang/Object;
    :cond_26
    invoke-interface {p1, p2}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    move v0, v1

    .line 153
    goto :goto_9

    .line 155
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The lite notification can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public completed()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 110
    .local p0, "this":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    sget-object v0, Lrx/internal/operators/NotificationLite;->ON_COMPLETED_SENTINEL:Ljava/lang/Object;

    return-object v0
.end method

.method public error(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    new-instance v0, Lrx/internal/operators/NotificationLite$OnErrorSentinel;

    invoke-direct {v0, p1}, Lrx/internal/operators/NotificationLite$OnErrorSentinel;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getError(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 3
    .param p1, "n"    # Ljava/lang/Object;

    .prologue
    .line 247
    .local p0, "this":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    check-cast p1, Lrx/internal/operators/NotificationLite$OnErrorSentinel;

    .end local p1    # "n":Ljava/lang/Object;
    iget-object v0, p1, Lrx/internal/operators/NotificationLite$OnErrorSentinel;->e:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "this":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    sget-object v0, Lrx/internal/operators/NotificationLite;->ON_NEXT_NULL_SENTINEL:Ljava/lang/Object;

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    .end local p1    # "n":Ljava/lang/Object;
    :cond_5
    return-object p1
.end method

.method public isCompleted(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "n"    # Ljava/lang/Object;

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    sget-object v0, Lrx/internal/operators/NotificationLite;->ON_COMPLETED_SENTINEL:Ljava/lang/Object;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isError(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "n"    # Ljava/lang/Object;

    .prologue
    .line 178
    .local p0, "this":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    instance-of v0, p1, Lrx/internal/operators/NotificationLite$OnErrorSentinel;

    return v0
.end method

.method public isNext(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "n"    # Ljava/lang/Object;

    .prologue
    .line 196
    .local p0, "this":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, p1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isNull(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "n"    # Ljava/lang/Object;

    .prologue
    .line 187
    .local p0, "this":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    sget-object v0, Lrx/internal/operators/NotificationLite;->ON_NEXT_NULL_SENTINEL:Ljava/lang/Object;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public kind(Ljava/lang/Object;)Lrx/Notification$Kind;
    .registers 4
    .param p1, "n"    # Ljava/lang/Object;

    .prologue
    .line 211
    .local p0, "this":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    if-nez p1, :cond_a

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The lite notification can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_a
    sget-object v0, Lrx/internal/operators/NotificationLite;->ON_COMPLETED_SENTINEL:Ljava/lang/Object;

    if-ne p1, v0, :cond_11

    .line 214
    sget-object v0, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    .line 219
    :goto_10
    return-object v0

    .line 215
    :cond_11
    instance-of v0, p1, Lrx/internal/operators/NotificationLite$OnErrorSentinel;

    if-eqz v0, :cond_18

    .line 216
    sget-object v0, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    goto :goto_10

    .line 219
    :cond_18
    sget-object v0, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    goto :goto_10
.end method

.method public next(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    .line 97
    sget-object p1, Lrx/internal/operators/NotificationLite;->ON_NEXT_NULL_SENTINEL:Ljava/lang/Object;

    .line 99
    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_4
    return-object p1
.end method