.class Lcom/tapsdk/moment/view/MomentDialog$13$1;
.super Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;
.source "MomentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog$13;->handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapsdk/moment/view/MomentDialog$13;

.field final synthetic val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog$13;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 3
    .param p1, "this$1"    # Lcom/tapsdk/moment/view/MomentDialog$13;

    .line 447
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$13$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$13;

    iput-object p2, p0, Lcom/tapsdk/moment/view/MomentDialog$13$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    invoke-direct {p0}, Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "result"    # Ljava/lang/String;

    .line 450
    if-nez p1, :cond_8

    .line 451
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$13$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    invoke-interface {v0, p2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_17

    .line 453
    :cond_8
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$13$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$13$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$13;

    iget-object v1, v1, Lcom/tapsdk/moment/view/MomentDialog$13;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const-string v2, "failed"

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, p2}, Lcom/tapsdk/moment/view/MomentDialog;->access$900(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 455
    :goto_17
    return-void
.end method
