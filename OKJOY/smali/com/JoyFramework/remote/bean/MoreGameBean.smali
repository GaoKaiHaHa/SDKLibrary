.class public Lcom/JoyFramework/remote/bean/MoreGameBean;
.super Lcom/JoyFramework/remote/bean/e;
.source "SourceFile"


# instance fields
.field private b:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Info"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/MoreGameItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/JoyFramework/remote/bean/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/MoreGameItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/MoreGameBean;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/MoreGameItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/MoreGameBean;->b:Ljava/util/List;

    .line 17
    return-void
.end method
