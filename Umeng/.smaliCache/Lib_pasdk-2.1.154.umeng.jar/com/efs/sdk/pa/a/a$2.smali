.class final Lcom/efs/sdk/pa/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/pa/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/efs/sdk/pa/a/a;


# direct methods
.method constructor <init>(Lcom/efs/sdk/pa/a/a;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/efs/sdk/pa/a/a$2;->a:Lcom/efs/sdk/pa/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$2;->a:Lcom/efs/sdk/pa/a/a;

    .line 1027
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/efs/sdk/pa/a/a;->a:Z

    .line 92
    return-void
.end method
