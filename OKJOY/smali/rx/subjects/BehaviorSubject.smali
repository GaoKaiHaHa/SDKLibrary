.class public final Lrx/subjects/BehaviorSubject;
.super Lrx/subjects/Subject;
.source "BehaviorSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# instance fields
.field private final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final state:Lrx/subjects/SubjectSubscriptionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lrx/subjects/BehaviorSubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-direct {p0, p1}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 76
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    .line 121
    iput-object p2, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    .line 122
    return-void
.end method

.method public static create()Lrx/subjects/BehaviorSubject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/BehaviorSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lrx/subjects/BehaviorSubject;->create(Ljava/lang/Object;Z)Lrx/subjects/BehaviorSubject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Object;)Lrx/subjects/BehaviorSubject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/subjects/BehaviorSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lrx/subjects/BehaviorSubject;->create(Ljava/lang/Object;Z)Lrx/subjects/BehaviorSubject;

    move-result-object v0

    return-object v0
.end method

.method private static create(Ljava/lang/Object;Z)Lrx/subjects/BehaviorSubject;
    .registers 4
    .param p1, "hasDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z)",
            "Lrx/subjects/BehaviorSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {v0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 104
    .local v0, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    if-eqz p1, :cond_12

    .line 105
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1, p0}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/SubjectSubscriptionManager;->setLatest(Ljava/lang/Object;)V

    .line 107
    :cond_12
    new-instance v1, Lrx/subjects/BehaviorSubject$1;

    invoke-direct {v1, v0}, Lrx/subjects/BehaviorSubject$1;-><init>(Lrx/subjects/SubjectSubscriptionManager;)V

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    .line 115
    iget-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    .line 116
    new-instance v1, Lrx/subjects/BehaviorSubject;

    invoke-direct {v1, v0, v0}, Lrx/subjects/BehaviorSubject;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;)V

    return-object v1
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .registers 3
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 230
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 231
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 233
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 217
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isNext(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 218
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 220
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getValues()[Ljava/lang/Object;
    .registers 3
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    sget-object v1, Lrx/subjects/BehaviorSubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/subjects/BehaviorSubject;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 271
    .local v0, "r":[Ljava/lang/Object;, "[TT;"
    sget-object v1, Lrx/subjects/BehaviorSubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    if-ne v0, v1, :cond_f

    .line 272
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    .line 274
    .end local v0    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_f
    return-object v0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 244
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isNext(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 246
    array-length v1, p1

    if-nez v1, :cond_25

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 249
    :cond_25
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v3

    .line 250
    array-length v1, p1

    if-le v1, v2, :cond_32

    .line 251
    aput-object v4, p1, v2

    .line 257
    :cond_32
    :goto_32
    return-object p1

    .line 254
    :cond_33
    array-length v1, p1

    if-lez v1, :cond_32

    .line 255
    aput-object v4, p1, v3

    goto :goto_32
.end method

.method public hasCompleted()Z
    .registers 3
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 203
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasObservers()Z
    .registers 2

    .prologue
    .line 173
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasThrowable()Z
    .registers 3
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasValue()Z
    .registers 3
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 185
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isNext(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public onCompleted()V
    .registers 8

    .prologue
    .line 126
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v6}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v3

    .line 127
    .local v3, "last":Ljava/lang/Object;
    if-eqz v3, :cond_e

    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v6, v6, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v6, :cond_2a

    .line 128
    :cond_e
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v6}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v5

    .line 129
    .local v5, "n":Ljava/lang/Object;
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v6, v5}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    .local v0, "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1c
    if-ge v2, v4, :cond_2a

    aget-object v1, v0, v2

    .line 130
    .local v1, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v6, v6, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v5, v6}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitNext(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 133
    .end local v0    # "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .end local v1    # "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "n":Ljava/lang/Object;
    :cond_2a
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 11
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 137
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v8, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v8}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v5

    .line 138
    .local v5, "last":Ljava/lang/Object;
    if-eqz v5, :cond_e

    iget-object v8, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v8, v8, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v8, :cond_3a

    .line 139
    :cond_e
    iget-object v8, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v8, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    .line 140
    .local v7, "n":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 141
    .local v3, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v8, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v8, v7}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    .local v0, "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1d
    if-ge v4, v6, :cond_37

    aget-object v1, v0, v4

    .line 143
    .local v1, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :try_start_21
    iget-object v8, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v8, v8, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v7, v8}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitNext(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_28} :catch_2b

    .line 141
    :goto_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 144
    :catch_2b
    move-exception v2

    .line 145
    .local v2, "e2":Ljava/lang/Throwable;
    if-nez v3, :cond_33

    .line 146
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .restart local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_33
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 152
    .end local v1    # "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "e2":Ljava/lang/Throwable;
    :cond_37
    invoke-static {v3}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    .line 154
    .end local v0    # "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "n":Ljava/lang/Object;
    :cond_3a
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v6}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v3

    .line 159
    .local v3, "last":Ljava/lang/Object;
    if-eqz v3, :cond_e

    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v6, v6, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v6, :cond_2a

    .line 160
    :cond_e
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v6, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 161
    .local v5, "n":Ljava/lang/Object;
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v6, v5}, Lrx/subjects/SubjectSubscriptionManager;->next(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    .local v0, "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1c
    if-ge v2, v4, :cond_2a

    aget-object v1, v0, v2

    .line 162
    .local v1, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v6, v6, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v5, v6}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitNext(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 165
    .end local v0    # "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .end local v1    # "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "n":Ljava/lang/Object;
    :cond_2a
    return-void
.end method

.method subscriberCount()I
    .registers 2

    .prologue
    .line 168
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
