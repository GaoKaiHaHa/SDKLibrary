.class Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7$2;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;Landroid/webkit/JsResult;)V
    .registers 3
    .param p1, "this$1"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7$2;->this$1:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;

    iput-object p2, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7$2;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 645
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7$2;->this$1:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    # getter for: Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->alertboxBlock:Z
    invoke-static {v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$900(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 646
    const/4 v0, -0x1

    if-ne p2, v0, :cond_13

    .line 647
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7$2;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 652
    :cond_12
    :goto_12
    return-void

    .line 649
    :cond_13
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7$2;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    goto :goto_12
.end method
