.class final Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog$2;
.super Ljava/lang/Object;
.source "MTGAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;-><init>(Landroid/content/Context;Lcom/mintegral/msdk/videocommon/dialog/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videocommon/dialog/a;

.field final synthetic b:Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;Lcom/mintegral/msdk/videocommon/dialog/a;)V
    .registers 3

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog$2;->b:Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;

    iput-object p2, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog$2;->a:Lcom/mintegral/msdk/videocommon/dialog/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog$2;->a:Lcom/mintegral/msdk/videocommon/dialog/a;

    if-eqz v0, :cond_9

    .line 74
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog$2;->a:Lcom/mintegral/msdk/videocommon/dialog/a;

    invoke-interface {v0}, Lcom/mintegral/msdk/videocommon/dialog/a;->b()V

    .line 76
    :cond_9
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog$2;->b:Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->cancel()V

    .line 77
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog$2;->b:Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->clear()V

    .line 78
    return-void
.end method
