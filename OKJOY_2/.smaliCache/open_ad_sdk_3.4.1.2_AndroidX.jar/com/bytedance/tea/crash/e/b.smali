.class public Lcom/bytedance/tea/crash/e/b;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# static fields
.field private static g:Lcom/bytedance/tea/b/a/a/a;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/tea/crash/e/b;->g:Lcom/bytedance/tea/b/a/a/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/tea/crash/e/b;->a:Z

    .line 33
    const-string v1, "http://apmlog.snssdk.com/apm/collect/crash/"

    iput-object v1, p0, Lcom/bytedance/tea/crash/e/b;->b:Ljava/lang/String;

    .line 37
    const/16 v1, 0x200

    iput v1, p0, Lcom/bytedance/tea/crash/e/b;->c:I

    .line 41
    iput v0, p0, Lcom/bytedance/tea/crash/e/b;->d:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/tea/crash/e/b;->e:Z

    .line 49
    iput-boolean v0, p0, Lcom/bytedance/tea/crash/e/b;->f:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/bytedance/tea/crash/e/b;->c:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 115
    iget v0, p0, Lcom/bytedance/tea/crash/e/b;->d:I

    return v0
.end method

.method public d()Z
    .registers 2

    .line 164
    iget-boolean v0, p0, Lcom/bytedance/tea/crash/e/b;->f:Z

    return v0
.end method
