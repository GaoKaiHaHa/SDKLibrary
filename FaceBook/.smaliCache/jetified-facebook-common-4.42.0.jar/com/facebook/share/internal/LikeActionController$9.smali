.class Lcom/facebook/share/internal/LikeActionController$9;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->refreshStatusAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/share/internal/LikeActionController;

    .line 1105
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 6

    .line 1109
    sget-object v0, Lcom/facebook/share/internal/LikeActionController$12;->$SwitchMap$com$facebook$share$widget$LikeView$ObjectType:[I

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;
    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$1700(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/share/widget/LikeView$ObjectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_58

    .line 1114
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1115
    # getter for: Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;
    invoke-static {v3}, Lcom/facebook/share/internal/LikeActionController;->access$1700(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .local v0, "likeRequestWrapper":Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;
    goto :goto_2f

    .line 1111
    .end local v0    # "likeRequestWrapper":Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;
    :pswitch_23
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    .line 1112
    .restart local v0    # "likeRequestWrapper":Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;
    nop

    .line 1118
    :goto_2f
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1119
    # getter for: Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;
    invoke-static {v4}, Lcom/facebook/share/internal/LikeActionController;->access$1700(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1121
    .local v1, "engagementRequest":Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;
    new-instance v2, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v2}, Lcom/facebook/GraphRequestBatch;-><init>()V

    .line 1122
    .local v2, "requestBatch":Lcom/facebook/GraphRequestBatch;
    invoke-interface {v0, v2}, Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1123
    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1125
    new-instance v3, Lcom/facebook/share/internal/LikeActionController$9$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/share/internal/LikeActionController$9$1;-><init>(Lcom/facebook/share/internal/LikeActionController$9;Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;)V

    invoke-virtual {v2, v3}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 1149
    invoke-virtual {v2}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 1150
    return-void

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_23
    .end packed-switch
.end method
