.class public final enum Lcom/sigmob/sdk/base/views/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/base/views/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/views/f;

.field public static final enum b:Lcom/sigmob/sdk/base/views/f;

.field public static final enum c:Lcom/sigmob/sdk/base/views/f;

.field public static final enum d:Lcom/sigmob/sdk/base/views/f;

.field public static final enum e:Lcom/sigmob/sdk/base/views/f;

.field private static final synthetic f:[Lcom/sigmob/sdk/base/views/f;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/views/f;

    const-string v1, "STATIC_RESOURCE"

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/views/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/views/f;->a:Lcom/sigmob/sdk/base/views/f;

    new-instance v0, Lcom/sigmob/sdk/base/views/f;

    const-string v1, "HTML_RESOURCE"

    invoke-direct {v0, v1, v3}, Lcom/sigmob/sdk/base/views/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/views/f;->b:Lcom/sigmob/sdk/base/views/f;

    new-instance v0, Lcom/sigmob/sdk/base/views/f;

    const-string v1, "IFRAME_RESOURCE"

    invoke-direct {v0, v1, v4}, Lcom/sigmob/sdk/base/views/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/views/f;->c:Lcom/sigmob/sdk/base/views/f;

    new-instance v0, Lcom/sigmob/sdk/base/views/f;

    const-string v1, "NATIVE_RESOURCE"

    invoke-direct {v0, v1, v5}, Lcom/sigmob/sdk/base/views/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/views/f;->d:Lcom/sigmob/sdk/base/views/f;

    new-instance v0, Lcom/sigmob/sdk/base/views/f;

    const-string v1, "URL_RESOURCE"

    invoke-direct {v0, v1, v6}, Lcom/sigmob/sdk/base/views/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/views/f;->e:Lcom/sigmob/sdk/base/views/f;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sigmob/sdk/base/views/f;

    sget-object v1, Lcom/sigmob/sdk/base/views/f;->a:Lcom/sigmob/sdk/base/views/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sigmob/sdk/base/views/f;->b:Lcom/sigmob/sdk/base/views/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/sdk/base/views/f;->c:Lcom/sigmob/sdk/base/views/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/sdk/base/views/f;->d:Lcom/sigmob/sdk/base/views/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sigmob/sdk/base/views/f;->e:Lcom/sigmob/sdk/base/views/f;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sigmob/sdk/base/views/f;->f:[Lcom/sigmob/sdk/base/views/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/views/f;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/views/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/views/f;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/base/views/f;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/views/f;->f:[Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/views/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/views/f;

    return-object v0
.end method