.class final Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserV24;
.super Ljava/lang/Object;
.source "PackageParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/virtualapk/internal/utils/PackageParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageParserV24"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apk"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 65
    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    .line 66
    .local v0, "parser":Landroid/content/pm/PackageParser;
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 67
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v2

    const-string v3, "collectCertificates"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Landroid/content/pm/PackageParser$Package;

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    .line 68
    invoke-virtual {v2, v3, v4}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v6

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-object v1
.end method
