.class public Lcom/kwad/sdk/crash/report/ReportEvent$StatPackage;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/crash/report/ReportEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatPackage"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5665094bf96edb60L


# instance fields
.field public exceptionEvent:Lcom/kwad/sdk/crash/report/ReportEvent$ExceptionEvent;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/crash/report/ReportEvent$StatPackage;->exceptionEvent:Lcom/kwad/sdk/crash/report/ReportEvent$ExceptionEvent;

    const-string v1, "exceptionEvent"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/crash/report/ReportEvent$ExceptionEvent;->parseJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/crash/report/ReportEvent$StatPackage;->exceptionEvent:Lcom/kwad/sdk/crash/report/ReportEvent$ExceptionEvent;

    const-string v2, "exceptionEvent"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    return-object v0
.end method
