.class Lcom/umeng/analytics/pro/h$b;
.super Ljava/lang/Object;
.source "UMStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/pro/h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 67
    new-instance v0, Lcom/umeng/analytics/pro/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/h;-><init>(Lcom/umeng/analytics/pro/h$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/h$b;->a:Lcom/umeng/analytics/pro/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/h;
    .registers 1

    .line 66
    sget-object v0, Lcom/umeng/analytics/pro/h$b;->a:Lcom/umeng/analytics/pro/h;

    return-object v0
.end method