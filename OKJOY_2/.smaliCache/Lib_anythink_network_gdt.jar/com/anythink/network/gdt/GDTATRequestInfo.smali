.class public Lcom/anythink/network/gdt/GDTATRequestInfo;
.super Lcom/anythink/core/api/ATMediationRequestInfo;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 19
    invoke-direct {p0}, Lcom/anythink/core/api/ATMediationRequestInfo;-><init>()V

    .line 20
    const/16 v0, 0x8

    iput v0, p0, Lcom/anythink/network/gdt/GDTATRequestInfo;->networkFirmId:I

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATRequestInfo;->a:Ljava/util/HashMap;

    .line 22
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATRequestInfo;->a:Ljava/util/HashMap;

    const-string v0, "unit_id"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method


# virtual methods
.method public getRequestParamMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRequestInfo;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public setFormat(Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    :cond_7
    goto :goto_12

    :pswitch_8
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_13

    :goto_12
    const/4 p1, -0x1

    :goto_13
    packed-switch p1, :pswitch_data_26

    goto :goto_1f

    .line 31
    :pswitch_17
    const-class p1, Lcom/anythink/network/gdt/GDTATSplashAdapter;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATRequestInfo;->className:Ljava/lang/String;

    .line 34
    :goto_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x34
        :pswitch_8
    .end packed-switch

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_17
    .end packed-switch
.end method