.class public Lcom/anythink/basead/e/f;
.super Lcom/anythink/basead/e/b;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private f:Lcom/anythink/basead/f/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/anythink/basead/e/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/basead/e/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/e/b;-><init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/basead/e/f;->f:Lcom/anythink/basead/f/e;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/anythink/basead/f/e;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/anythink/basead/e/f;->f:Lcom/anythink/basead/f/e;

    .line 39
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/basead/e/f;->c()Z

    move-result v1

    if-nez v1, :cond_19

    .line 46
    iget-object p1, p0, Lcom/anythink/basead/e/f;->f:Lcom/anythink/basead/f/e;

    if-eqz p1, :cond_16

    .line 47
    const-string v1, "30001"

    const-string v2, "No fill, offer = null!"

    invoke-static {v1, v2}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/anythink/basead/f/e;->onVideoShowFailed(Lcom/anythink/basead/c/f;)V

    .line 49
    :cond_16
    iput-object v0, p0, Lcom/anythink/basead/e/f;->e:Lcom/anythink/core/common/d/u;

    .line 50
    return-void

    .line 53
    :cond_19
    const-string v1, "extra_scenario"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v2, "extra_orientation"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 55
    iget-object v2, p0, Lcom/anythink/basead/e/f;->e:Lcom/anythink/core/common/d/u;

    invoke-virtual {p0, v2}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/core/common/d/u;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {}, Lcom/anythink/basead/f/b;->a()Lcom/anythink/basead/f/b;

    move-result-object v3

    new-instance v4, Lcom/anythink/basead/e/f$1;

    invoke-direct {v4, p0, v2}, Lcom/anythink/basead/e/f$1;-><init>(Lcom/anythink/basead/e/f;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lcom/anythink/basead/f/b;->a(Ljava/lang/String;Lcom/anythink/basead/f/b$b;)V

    .line 121
    new-instance v3, Lcom/anythink/basead/c/a;

    invoke-direct {v3}, Lcom/anythink/basead/c/a;-><init>()V

    .line 122
    iget-object v4, p0, Lcom/anythink/basead/e/f;->e:Lcom/anythink/core/common/d/u;

    iput-object v4, v3, Lcom/anythink/basead/c/a;->c:Lcom/anythink/core/common/d/h;

    .line 123
    iput-object v2, v3, Lcom/anythink/basead/c/a;->d:Ljava/lang/String;

    .line 124
    const/4 v2, 0x1

    iput v2, v3, Lcom/anythink/basead/c/a;->a:I

    .line 125
    iget-object v2, p0, Lcom/anythink/basead/e/f;->c:Lcom/anythink/core/common/d/i;

    iput-object v2, v3, Lcom/anythink/basead/c/a;->g:Lcom/anythink/core/common/d/i;

    .line 126
    iput p1, v3, Lcom/anythink/basead/c/a;->e:I

    .line 127
    iput-object v1, v3, Lcom/anythink/basead/c/a;->b:Ljava/lang/String;

    .line 129
    iget-object p1, p0, Lcom/anythink/basead/e/f;->b:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/anythink/basead/ui/BaseAdActivity;->a(Landroid/content/Context;Lcom/anythink/basead/c/a;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5c} :catch_5d

    .line 136
    return-void

    .line 130
    :catch_5d
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    iget-object v1, p0, Lcom/anythink/basead/e/f;->f:Lcom/anythink/basead/f/e;

    if-eqz v1, :cond_72

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "-9999"

    invoke-static {v2, p1}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/anythink/basead/f/e;->onVideoShowFailed(Lcom/anythink/basead/c/f;)V

    .line 135
    :cond_72
    iput-object v0, p0, Lcom/anythink/basead/e/f;->e:Lcom/anythink/core/common/d/u;

    .line 138
    return-void
.end method

.method public final b()V
    .registers 2

    .line 143
    invoke-super {p0}, Lcom/anythink/basead/e/b;->b()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/e/f;->f:Lcom/anythink/basead/f/e;

    .line 145
    return-void
.end method
