.class Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->onDriftAdReceive(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$1;->b:Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;

    iput-object p2, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$1;->b:Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAdView;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$1;->b:Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAdView;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    iget-object v1, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sigmob/windad/Drift/WindDriftAdListener;->onDriftAdLoadSuccess(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
