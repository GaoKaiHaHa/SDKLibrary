.class public Lcom/JoyFramework/module/b/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/b/b/b$a;


# instance fields
.field a:Lcom/JoyFramework/module/b/b/b$b;

.field private b:Lrx/subscriptions/CompositeSubscription;

.field private c:Lrx/Subscription;


# direct methods
.method public constructor <init>(Lcom/JoyFramework/module/b/b/b$b;)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/JoyFramework/module/b/d/c;->a:Lcom/JoyFramework/module/b/b/b$b;

    .line 38
    iget-object v0, p0, Lcom/JoyFramework/module/b/d/c;->a:Lcom/JoyFramework/module/b/b/b$b;

    invoke-interface {v0, p0}, Lcom/JoyFramework/module/b/b/b$b;->a(Ljava/lang/Object;)V

    .line 39
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/b/d/c;->b:Lrx/subscriptions/CompositeSubscription;

    .line 40
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 46
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 55
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {p1, v0, p2}, Lcom/JoyFramework/remote/a/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/JoyFramework/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/JoyFramework/a/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/JoyFramework/remote/b/d/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v2

    new-instance v3, Lcom/JoyFramework/remote/b/c/b;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lcom/JoyFramework/module/b/d/d;

    invoke-direct {v5, p0, p2}, Lcom/JoyFramework/module/b/d/d;-><init>(Lcom/JoyFramework/module/b/d/c;Ljava/lang/String;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/JoyFramework/remote/b/d/b;->i(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/b/d/c;->c:Lrx/Subscription;

    .line 78
    iget-object v0, p0, Lcom/JoyFramework/module/b/d/c;->b:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lcom/JoyFramework/module/b/d/c;->c:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 79
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/JoyFramework/module/b/d/c;->b:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->clear()V

    .line 51
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 85
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {p1, v0, p2}, Lcom/JoyFramework/remote/a/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/JoyFramework/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/JoyFramework/a/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/JoyFramework/remote/b/d/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v2

    new-instance v3, Lcom/JoyFramework/remote/b/c/b;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lcom/JoyFramework/module/b/d/e;

    invoke-direct {v5, p0, p2}, Lcom/JoyFramework/module/b/d/e;-><init>(Lcom/JoyFramework/module/b/d/c;Ljava/lang/String;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/JoyFramework/remote/b/d/b;->j(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/b/d/c;->c:Lrx/Subscription;

    .line 105
    iget-object v0, p0, Lcom/JoyFramework/module/b/d/c;->b:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lcom/JoyFramework/module/b/d/c;->c:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 106
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 112
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {p1, v0, p2}, Lcom/JoyFramework/remote/a/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/JoyFramework/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/JoyFramework/a/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/JoyFramework/remote/b/d/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v2

    new-instance v3, Lcom/JoyFramework/remote/b/c/b;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lcom/JoyFramework/module/b/d/f;

    invoke-direct {v5, p0, p2}, Lcom/JoyFramework/module/b/d/f;-><init>(Lcom/JoyFramework/module/b/d/c;Ljava/lang/String;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/JoyFramework/remote/b/d/b;->k(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/b/d/c;->c:Lrx/Subscription;

    .line 131
    iget-object v0, p0, Lcom/JoyFramework/module/b/d/c;->b:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lcom/JoyFramework/module/b/d/c;->c:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 132
    return-void
.end method