.class final Lcom/tds/common/region/TdsRegionHelper$3;
.super Lcom/tds/common/net/json/TypeRef;
.source "TdsRegionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/region/TdsRegionHelper;->getRemoteRegion(ILjava/lang/String;)Lcom/tds/common/reactor/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/common/net/json/TypeRef<",
        "Lcom/tds/common/net/ResponseBean<",
        "Lcom/tds/common/region/RegionBean;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Lcom/tds/common/net/json/TypeRef;-><init>()V

    return-void
.end method
