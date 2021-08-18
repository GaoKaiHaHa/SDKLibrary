.class Landroid/support/v4/text/ICUCompatApi23;
.super Ljava/lang/Object;
.source "ICUCompatApi23.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompatIcs"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 34
    :try_start_0
    const-string v0, "libcore.icu.ICU"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "addLikelySubtags"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Locale;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/text/ICUCompatApi23;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    .line 39
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 40
    return-void

    .line 37
    :catch_18
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 45
    const-string v0, "ICUCompatIcs"

    const/4 v1, 0x1

    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 46
    .local v1, "args":[Ljava/lang/Object;
    sget-object v2, Landroid/support/v4/text/ICUCompatApi23;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_15} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_15} :catch_16

    return-object v0

    .line 49
    .end local v1    # "args":[Ljava/lang/Object;
    :catch_16
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 47
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1b
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    nop

    .line 53
    :goto_20
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
