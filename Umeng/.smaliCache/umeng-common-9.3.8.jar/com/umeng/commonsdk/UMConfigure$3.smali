.class final Lcom/umeng/commonsdk/UMConfigure$3;
.super Ljava/lang/Thread;
.source "UMConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 448
    iput-object p1, p0, Lcom/umeng/commonsdk/UMConfigure$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 452
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 453
    iget-object v0, p0, Lcom/umeng/commonsdk/UMConfigure$3;->a:Landroid/content/Context;

    const-string v1, "\u57fa\u7840\u7ec4\u4ef6\u5e939.3.6\u7248\u672c\u4ec5\u652f\u63016.2.0\u53ca\u66f4\u9ad8\u7248\u672c\u63a8\u9001SDK\u30017.1.0\u53ca\u66f4\u9ad8\u7248\u672c\u5206\u4eabSDK\u3002"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 456
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    .line 458
    goto :goto_14

    .line 457
    :catchall_13
    move-exception v0

    .line 459
    :goto_14
    return-void
.end method