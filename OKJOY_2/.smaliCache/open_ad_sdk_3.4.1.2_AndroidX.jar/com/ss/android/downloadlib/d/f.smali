.class public Lcom/ss/android/downloadlib/d/f;
.super Lcom/ss/android/socialbase/appdownloader/c/a;
.source "NewDownloadDepend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/d/f$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/ss/android/downloadlib/d/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/d/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/c/a;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .line 21
    sget-object v0, Lcom/ss/android/downloadlib/d/f;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/ss/android/socialbase/appdownloader/c/l;
    .registers 3

    .line 41
    new-instance v0, Lcom/ss/android/downloadlib/d/f$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/downloadlib/d/f$1;-><init>(Lcom/ss/android/downloadlib/d/f;Landroid/content/Context;)V

    return-object v0
.end method

.method public a()Z
    .registers 2

    .line 36
    const/4 v0, 0x1

    return v0
.end method
