.class public abstract Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/widgets/behavior/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BottomSheetCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSlide(Landroid/view/View;F)V
.end method

.method public abstract onStateChanged(Landroid/view/View;I)V
.end method