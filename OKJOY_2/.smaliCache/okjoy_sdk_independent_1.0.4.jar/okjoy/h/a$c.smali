.class public Lokjoy/h/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/h/a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/h/a;


# direct methods
.method public constructor <init>(Lokjoy/h/a;)V
    .registers 2

    iput-object p1, p0, Lokjoy/h/a$c;->a:Lokjoy/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lokjoy/h/a$c;->a:Lokjoy/h/a;

    iget-object v0, v0, Lokjoy/h/a;->d:Lokjoy/h/b;

    if-eqz v0, :cond_e

    const v1, 0x186a0

    const-string v2, "\u63a5\u53e3\u9519\u8bef\uff1aMalformedURLException"

    invoke-interface {v0, v1, v2}, Lokjoy/h/b;->a(ILjava/lang/String;)V

    :cond_e
    return-void
.end method
