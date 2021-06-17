.class public final Landroidx/navigation/NavType$ParcelableType;
.super Landroidx/navigation/NavType;
.source "NavType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParcelableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/navigation/NavType<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TD;>;)V"
        }
    .end annotation

    .line 650
    .local p0, "this":Landroidx/navigation/NavType$ParcelableType;, "Landroidx/navigation/NavType$ParcelableType<TD;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/navigation/NavType;-><init>(Z)V

    .line 651
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-class v0, Ljava/io/Serializable;

    .line 652
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_2e

    .line 653
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement Parcelable or Serializable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_2e
    :goto_2e
    iput-object p1, p0, Landroidx/navigation/NavType$ParcelableType;->mType:Ljava/lang/Class;

    .line 657
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 690
    .local p0, "this":Landroidx/navigation/NavType$ParcelableType;, "Landroidx/navigation/NavType$ParcelableType<TD;>;"
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 691
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 693
    :cond_11
    move-object v0, p1

    check-cast v0, Landroidx/navigation/NavType$ParcelableType;

    .line 695
    .local v0, "that":Landroidx/navigation/NavType$ParcelableType;, "Landroidx/navigation/NavType$ParcelableType<*>;"
    iget-object v1, p0, Landroidx/navigation/NavType$ParcelableType;->mType:Ljava/lang/Class;

    iget-object v2, v0, Landroidx/navigation/NavType$ParcelableType;->mType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 691
    .end local v0    # "that":Landroidx/navigation/NavType$ParcelableType;, "Landroidx/navigation/NavType$ParcelableType<*>;"
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TD;"
        }
    .end annotation

    .line 673
    .local p0, "this":Landroidx/navigation/NavType$ParcelableType;, "Landroidx/navigation/NavType$ParcelableType<TD;>;"
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 685
    .local p0, "this":Landroidx/navigation/NavType$ParcelableType;, "Landroidx/navigation/NavType$ParcelableType<TD;>;"
    iget-object v0, p0, Landroidx/navigation/NavType$ParcelableType;->mType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 700
    .local p0, "this":Landroidx/navigation/NavType$ParcelableType;, "Landroidx/navigation/NavType$ParcelableType<TD;>;"
    iget-object v0, p0, Landroidx/navigation/NavType$ParcelableType;->mType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TD;"
        }
    .end annotation

    .line 679
    .local p0, "this":Landroidx/navigation/NavType$ParcelableType;, "Landroidx/navigation/NavType$ParcelableType<TD;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parcelables don\'t support default values."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TD;)V"
        }
    .end annotation

    .line 661
    .local p0, "this":Landroidx/navigation/NavType$ParcelableType;, "Landroidx/navigation/NavType$ParcelableType<TD;>;"
    .local p3, "value":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Landroidx/navigation/NavType$ParcelableType;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    if-eqz p3, :cond_17

    instance-of v0, p3, Landroid/os/Parcelable;

    if-eqz v0, :cond_c

    goto :goto_17

    .line 664
    :cond_c
    instance-of v0, p3, Ljava/io/Serializable;

    if-eqz v0, :cond_1d

    .line 665
    move-object v0, p3

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1d

    .line 663
    :cond_17
    :goto_17
    move-object v0, p3

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 667
    :cond_1d
    :goto_1d
    return-void
.end method
