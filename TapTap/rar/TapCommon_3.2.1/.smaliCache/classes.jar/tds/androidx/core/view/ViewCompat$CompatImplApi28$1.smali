.class final Ltds/androidx/core/view/ViewCompat$CompatImplApi28$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnUnhandledKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/core/view/ViewCompat$CompatImplApi28;->addOnUnhandledKeyEventListener(Landroid/view/View;Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;


# direct methods
.method constructor <init>(Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .registers 2

    .line 3112
    iput-object p1, p0, Ltds/androidx/core/view/ViewCompat$CompatImplApi28$1;->val$listener:Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3115
    iget-object v0, p0, Ltds/androidx/core/view/ViewCompat$CompatImplApi28$1;->val$listener:Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    invoke-interface {v0, p1, p2}, Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
