.class public Lcom/sigmob/a/b;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x267a938239b6b01cL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sigmob/a/b;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
