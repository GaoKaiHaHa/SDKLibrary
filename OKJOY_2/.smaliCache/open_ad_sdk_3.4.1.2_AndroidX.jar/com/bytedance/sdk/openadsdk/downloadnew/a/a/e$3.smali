.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$3;
.super Ljava/lang/Object;
.source "LibUIFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->a(Landroid/app/Activity;Lcom/ss/android/a/a/c/c;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/a/a/c/c;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;Lcom/ss/android/a/a/c/c;)V
    .registers 3

    .line 92
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$3;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$3;->a:Lcom/ss/android/a/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 95
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$3;->a:Lcom/ss/android/a/a/c/c;

    iget-object p2, p2, Lcom/ss/android/a/a/c/c;->h:Lcom/ss/android/a/a/c/c$b;

    if-eqz p2, :cond_d

    .line 96
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$3;->a:Lcom/ss/android/a/a/c/c;

    iget-object p2, p2, Lcom/ss/android/a/a/c/c;->h:Lcom/ss/android/a/a/c/c$b;

    invoke-interface {p2, p1}, Lcom/ss/android/a/a/c/c$b;->a(Landroid/content/DialogInterface;)V

    .line 98
    :cond_d
    return-void
.end method
