.class public Lcom/JoyFramework/remote/bean/ao;
.super Lcom/JoyFramework/remote/bean/e;
.source "SourceFile"


# instance fields
.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ShareId"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ShareMsg"
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SharePic"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/JoyFramework/remote/bean/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ao;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ao;->b:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ao;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ao;->c:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/ao;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/ao;->d:Ljava/lang/String;

    .line 42
    return-void
.end method
