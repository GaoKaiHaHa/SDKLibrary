.class final Lcom/efs/sdk/pa/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/pa/a/b$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/efs/sdk/pa/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/pa/a/b;->a:Ljava/util/HashMap;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/efs/sdk/pa/a/b;->b:Z

    return-void
.end method