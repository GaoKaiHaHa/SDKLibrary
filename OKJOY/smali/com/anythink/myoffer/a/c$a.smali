.class final Lcom/anythink/myoffer/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/myoffer/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/anythink/myoffer/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lcom/anythink/myoffer/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anythink/myoffer/a/c;-><init>(B)V

    sput-object v0, Lcom/anythink/myoffer/a/c$a;->a:Lcom/anythink/myoffer/a/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/anythink/myoffer/a/c;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/anythink/myoffer/a/c$a;->a:Lcom/anythink/myoffer/a/c;

    return-object v0
.end method
