.class Lcom/JoyFramework/wight/Loading/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/wight/Loading/OkGameLoadingView$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V
    .registers 2

    .prologue
    .line 373
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/a;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/animation/ValueAnimator;)V
    .registers 8

    .prologue
    .line 376
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/a;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 378
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/a;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/a;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 379
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/a;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/a;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 380
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/a;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->invalidate()V

    .line 381
    return-void
.end method