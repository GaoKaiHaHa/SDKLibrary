.class final enum Lcom/sigmob/sdk/mraid/r$4;
.super Lcom/sigmob/sdk/mraid/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/r;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/sdk/mraid/r;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/mraid/r$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/sigmob/sdk/base/models/PlacementType;)Z
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/base/models/PlacementType;->INLINE:Lcom/sigmob/sdk/base/models/PlacementType;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method