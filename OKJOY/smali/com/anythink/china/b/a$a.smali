.class final Lcom/anythink/china/b/a$a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static e:Ljava/lang/Object;

.field private static f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 101
    sput-object v0, Lcom/anythink/china/b/a$a;->g:Ljava/lang/reflect/Method;

    .line 102
    sput-object v0, Lcom/anythink/china/b/a$a;->h:Ljava/lang/reflect/Method;

    .line 103
    sput-object v0, Lcom/anythink/china/b/a$a;->i:Ljava/lang/reflect/Method;

    .line 104
    sput-object v0, Lcom/anythink/china/b/a$a;->j:Ljava/lang/reflect/Method;

    .line 106
    :try_start_9
    const-string v0, "com.android.id.impl.IdProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 107
    sput-object v0, Lcom/anythink/china/b/a$a;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/b/a$a;->e:Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/anythink/china/b/a$a;->f:Ljava/lang/Class;

    const-string v1, "getUDID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/b/a$a;->g:Ljava/lang/reflect/Method;

    .line 109
    sget-object v0, Lcom/anythink/china/b/a$a;->f:Ljava/lang/Class;

    const-string v1, "getOAID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/b/a$a;->h:Ljava/lang/reflect/Method;

    .line 110
    sget-object v0, Lcom/anythink/china/b/a$a;->f:Ljava/lang/Class;

    const-string v1, "getVAID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/b/a$a;->i:Ljava/lang/reflect/Method;

    .line 111
    sget-object v0, Lcom/anythink/china/b/a$a;->f:Ljava/lang/Class;

    const-string v1, "getAAID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/b/a$a;->j:Ljava/lang/reflect/Method;
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_5f} :catch_60

    .line 115
    :goto_5f
    return-void

    :catch_60
    move-exception v0

    goto :goto_5f
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget-object v0, Lcom/anythink/china/b/a$a;->g:Ljava/lang/reflect/Method;

    invoke-static {p1, v0}, Lcom/anythink/china/b/a$a;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/china/b/a$a;->a:Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/anythink/china/b/a$a;->h:Ljava/lang/reflect/Method;

    invoke-static {p1, v0}, Lcom/anythink/china/b/a$a;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/china/b/a$a;->b:Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/anythink/china/b/a$a;->i:Ljava/lang/reflect/Method;

    invoke-static {p1, v0}, Lcom/anythink/china/b/a$a;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/china/b/a$a;->c:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/anythink/china/b/a$a;->j:Ljava/lang/reflect/Method;

    invoke-static {p1, v0}, Lcom/anythink/china/b/a$a;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/china/b/a$a;->d:Ljava/lang/String;

    .line 122
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 129
    sget-object v0, Lcom/anythink/china/b/a$a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    .line 131
    :try_start_6
    sget-object v0, Lcom/anythink/china/b/a$a;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_18

    .line 133
    check-cast v0, Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_16} :catch_17

    .line 139
    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static a()Z
    .registers 1

    .prologue
    .line 125
    sget-object v0, Lcom/anythink/china/b/a$a;->f:Ljava/lang/Class;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/anythink/china/b/a$a;->e:Ljava/lang/Object;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method