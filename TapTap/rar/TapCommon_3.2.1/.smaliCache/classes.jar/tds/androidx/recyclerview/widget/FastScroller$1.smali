.class Ltds/androidx/recyclerview/widget/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/FastScroller;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/FastScroller;)V
    .registers 2
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/FastScroller;

    .line 123
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/FastScroller$1;->this$0:Ltds/androidx/recyclerview/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 126
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/FastScroller$1;->this$0:Ltds/androidx/recyclerview/widget/FastScroller;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/FastScroller;->hide(I)V

    .line 127
    return-void
.end method