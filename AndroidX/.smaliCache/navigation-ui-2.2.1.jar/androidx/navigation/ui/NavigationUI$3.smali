.class final Landroidx/navigation/ui/NavigationUI$3;
.super Ljava/lang/Object;
.source "NavigationUI.java"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/ui/NavigationUI;->setupWithNavController(Lcom/google/android/material/navigation/NavigationView;Landroidx/navigation/NavController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$navController:Landroidx/navigation/NavController;

.field final synthetic val$navigationView:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method constructor <init>(Landroidx/navigation/NavController;Lcom/google/android/material/navigation/NavigationView;)V
    .registers 3

    .line 441
    iput-object p1, p0, Landroidx/navigation/ui/NavigationUI$3;->val$navController:Landroidx/navigation/NavController;

    iput-object p2, p0, Landroidx/navigation/ui/NavigationUI$3;->val$navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 444
    iget-object v0, p0, Landroidx/navigation/ui/NavigationUI$3;->val$navController:Landroidx/navigation/NavController;

    invoke-static {p1, v0}, Landroidx/navigation/ui/NavigationUI;->onNavDestinationSelected(Landroid/view/MenuItem;Landroidx/navigation/NavController;)Z

    move-result v0

    .line 445
    .local v0, "handled":Z
    if-eqz v0, :cond_27

    .line 446
    iget-object v1, p0, Landroidx/navigation/ui/NavigationUI$3;->val$navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 447
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v2, :cond_1b

    .line 448
    move-object v2, v1

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v3, p0, Landroidx/navigation/ui/NavigationUI$3;->val$navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_27

    .line 450
    :cond_1b
    iget-object v2, p0, Landroidx/navigation/ui/NavigationUI$3;->val$navigationView:Lcom/google/android/material/navigation/NavigationView;

    .line 451
    invoke-static {v2}, Landroidx/navigation/ui/NavigationUI;->findBottomSheetBehavior(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    .line 452
    .local v2, "bottomSheetBehavior":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    if-eqz v2, :cond_27

    .line 453
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 457
    .end local v1    # "parent":Landroid/view/ViewParent;
    .end local v2    # "bottomSheetBehavior":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    :cond_27
    :goto_27
    return v0
.end method
