.class public abstract Lcom/anythink/core/b/g/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3


# instance fields
.field private a:I

.field protected g:Z

.field protected h:Lcom/anythink/core/b/g/a/c;

.field protected i:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean v0, p0, Lcom/anythink/core/b/g/a/b;->g:Z

    .line 11
    iput v0, p0, Lcom/anythink/core/b/g/a/b;->i:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/b/g/a/b;->a:I

    return-void
.end method

.method private a(Lcom/anythink/core/b/g/a/c;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/anythink/core/b/g/a/b;->h:Lcom/anythink/core/b/g/a/c;

    .line 24
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method final a(I)V
    .registers 2

    .prologue
    .line 15
    iput p1, p0, Lcom/anythink/core/b/g/a/b;->a:I

    .line 16
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lcom/anythink/core/b/g/a/b;->a:I

    return v0
.end method

.method public run()V
    .registers 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/anythink/core/b/g/a/b;->a()V

    .line 40
    return-void
.end method