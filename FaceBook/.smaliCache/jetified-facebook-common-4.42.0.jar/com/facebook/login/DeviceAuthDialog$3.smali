.class Lcom/facebook/login/DeviceAuthDialog$3;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->schedulePoll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/login/DeviceAuthDialog;

    .line 278
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$3;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$3;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # invokes: Lcom/facebook/login/DeviceAuthDialog;->poll()V
    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->access$200(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 282
    return-void
.end method
