.class Lcom/qq/e/ads/nativ/NativeMediaAD$ADListenerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/nativ/NativeMediaAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ADListenerAdapter"
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/ads/nativ/NativeMediaAD;


# direct methods
.method private constructor <init>(Lcom/qq/e/ads/nativ/NativeMediaAD;)V
    .registers 2

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qq/e/ads/nativ/NativeMediaAD;B)V
    .registers 3
    .param p1, "x0"    # Lcom/qq/e/ads/nativ/NativeMediaAD;

    .prologue
    invoke-direct {p0, p1}, Lcom/qq/e/ads/nativ/NativeMediaAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/nativ/NativeMediaAD;)V

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 7
    .param p1, "evt"    # Lcom/qq/e/comm/adevent/ADEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Lcom/qq/e/ads/nativ/NativeMediaAD;)Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "No DevADListener Binded"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_1ea

    goto :goto_f

    :pswitch_18
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_43

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Lcom/qq/e/ads/nativ/NativeMediaAD;)Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/qq/e/comm/a;->a(I)Lcom/qq/e/comm/util/AdError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    goto :goto_f

    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdEvent.Paras error for NativeMediaAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_f

    :pswitch_5c
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_7f

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Lcom/qq/e/ads/nativ/NativeMediaAD;)Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;->onADLoaded(Ljava/util/List;)V

    goto :goto_f

    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Paras error for NativeMediaAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_99
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_bd

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Lcom/qq/e/ads/nativ/NativeMediaAD;)Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v1, v0}, Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;->onADStatusChanged(Lcom/qq/e/ads/nativ/NativeMediaADData;)V

    goto/16 :goto_f

    :cond_bd
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Paras error for NativeMediaAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_d7
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_116

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeADDataRef;

    if-eqz v0, :cond_116

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_116

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Lcom/qq/e/ads/nativ/NativeMediaAD;)Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/qq/e/comm/a;->a(I)Lcom/qq/e/comm/util/AdError;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;->onADError(Lcom/qq/e/ads/nativ/NativeMediaADData;Lcom/qq/e/comm/util/AdError;)V

    goto/16 :goto_f

    :cond_116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Paras error for NativeMediaAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_130
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_154

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    if-eqz v0, :cond_154

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Lcom/qq/e/ads/nativ/NativeMediaAD;)Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v1, v0}, Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;->onADVideoLoaded(Lcom/qq/e/ads/nativ/NativeMediaADData;)V

    goto/16 :goto_f

    :cond_154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Paras error for NativeMediaAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_16e
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_192

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    if-eqz v0, :cond_192

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Lcom/qq/e/ads/nativ/NativeMediaAD;)Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v1, v0}, Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;->onADExposure(Lcom/qq/e/ads/nativ/NativeMediaADData;)V

    goto/16 :goto_f

    :cond_192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Paras error for NativeMediaAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_1ac
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_1d0

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    if-eqz v0, :cond_1d0

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeMediaAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeMediaAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeMediaAD;->a(Lcom/qq/e/ads/nativ/NativeMediaAD;)Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v1, v0}, Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;->onADClicked(Lcom/qq/e/ads/nativ/NativeMediaADData;)V

    goto/16 :goto_f

    :cond_1d0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Paras error for NativeMediaAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_data_1ea
    .packed-switch 0x1
        :pswitch_18
        :pswitch_5c
        :pswitch_99
        :pswitch_d7
        :pswitch_130
        :pswitch_16e
        :pswitch_1ac
    .end packed-switch
.end method