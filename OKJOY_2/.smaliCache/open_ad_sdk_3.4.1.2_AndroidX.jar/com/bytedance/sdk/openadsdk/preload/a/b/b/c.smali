.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/b/c;
.super Lcom/bytedance/sdk/openadsdk/preload/a/b/b/b;
.source "UnsafeReflectionAccessor.java"


# static fields
.field private static a:Ljava/lang/Class;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b/b;-><init>()V

    .line 34
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b/c;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b/c;->b:Ljava/lang/Object;

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b/c;->c()Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b/c;->c:Ljava/lang/reflect/Field;

    return-void
.end method

.method private static b()Ljava/lang/Object;
    .registers 3

    .line 70
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "sun.misc.Unsafe"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/b/c;->a:Ljava/lang/Class;

    .line 71
    const-string v2, "theUnsafe"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    return-object v0

    .line 74
    :catch_18
    move-exception v1

    .line 75
    return-object v0
.end method

.method private static c()Ljava/lang/reflect/Field;
    .registers 2

    .line 81
    :try_start_0
    const-class v0, Ljava/lang/reflect/AccessibleObject;

    const-string v1, "override"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 82
    :catch_9
    move-exception v0

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/AccessibleObject;)V
    .registers 6

    .line 40
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b/c;->b(Ljava/lang/reflect/AccessibleObject;)Z

    move-result v0

    .line 41
    if-nez v0, :cond_2b

    .line 44
    const/4 v0, 0x1

    :try_start_7
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_a} :catch_b

    .line 49
    goto :goto_2b

    .line 45
    :catch_b
    move-exception v0

    .line 46
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/a/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gson couldn\'t modify fields for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/m;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 51
    :cond_2b
    :goto_2b
    return-void
.end method

.method b(Ljava/lang/reflect/AccessibleObject;)Z
    .registers 12

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b/c;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b/c;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_59

    .line 57
    :try_start_9
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b/c;->a:Ljava/lang/Class;

    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 58
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b/c;->b:Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b/c;->c:Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 59
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b/c;->a:Ljava/lang/Class;

    const-string v2, "putBoolean"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v1

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 60
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b/c;->b:Ljava/lang/Object;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v9

    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_57} :catch_58

    .line 61
    return v3

    .line 62
    :catch_58
    move-exception p1

    .line 65
    :cond_59
    return v1
.end method
