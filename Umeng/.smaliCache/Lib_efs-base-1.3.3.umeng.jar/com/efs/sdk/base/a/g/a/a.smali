.class public abstract Lcom/efs/sdk/base/a/g/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/efs/sdk/base/a/g/a/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/efs/sdk/base/a/f/b;)V
.end method

.method final b(Lcom/efs/sdk/base/a/f/b;)V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/efs/sdk/base/a/g/a/a;->a:Lcom/efs/sdk/base/a/g/a/a;

    if-eqz v0, :cond_7

    .line 34
    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/a/g/a/a;->a(Lcom/efs/sdk/base/a/f/b;)V

    .line 36
    :cond_7
    return-void
.end method