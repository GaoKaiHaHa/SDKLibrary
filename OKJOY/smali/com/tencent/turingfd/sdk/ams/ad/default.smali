.class public Lcom/tencent/turingfd/sdk/ams/ad/default;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Cb:[B


# instance fields
.field public Sb:I

.field public jc:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/default;->Cb:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/default;->Sb:I

    .line 3
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/default;->jc:[B

    return-void
.end method

.method public static c(I)Lcom/tencent/turingfd/sdk/ams/ad/default;
    .registers 3

    .prologue
    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/default;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/default;->Cb:[B

    invoke-direct {v0, p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/default;-><init>(I[B)V

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/default;->Sb:I

    return v0
.end method