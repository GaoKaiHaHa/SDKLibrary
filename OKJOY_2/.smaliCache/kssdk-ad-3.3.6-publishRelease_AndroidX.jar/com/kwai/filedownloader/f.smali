.class public Lcom/kwai/filedownloader/f;
.super Lcom/kwai/filedownloader/event/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/f$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwai/filedownloader/event/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwai/filedownloader/f$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwai/filedownloader/f;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwai/filedownloader/f;
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/f$a;->a()Lcom/kwai/filedownloader/f;

    move-result-object v0

    return-object v0
.end method
