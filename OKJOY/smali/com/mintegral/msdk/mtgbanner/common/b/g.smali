.class public Lcom/mintegral/msdk/mtgbanner/common/b/g;
.super Ljava/lang/Object;
.source "DownloadImageListener.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/mintegral/msdk/mtgbanner/common/c/b;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/mintegral/msdk/mtgbanner/common/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgbanner/common/b/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/c/b;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eqz p1, :cond_7

    .line 18
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/b/g;->b:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    .line 20
    :cond_7
    iput-object p2, p0, Lcom/mintegral/msdk/mtgbanner/common/b/g;->c:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 32
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/b/g;->a:Ljava/lang/String;

    const-string v1, "DownloadImageListener campaign image fail"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/g;->b:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/b/g;->c:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 34
    return-void
.end method

.method public onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 25
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/b/g;->a:Ljava/lang/String;

    const-string v1, "DownloadImageListener campaign image success"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/g;->b:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/b/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2, v2}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 28
    return-void
.end method
