.class final enum Lcom/bytedance/sdk/openadsdk/preload/a/d$3;
.super Lcom/bytedance/sdk/openadsdk/preload/a/d;
.source "FieldNamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d;-><init>(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/preload/a/d$1;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 3

    .line 74
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d$3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d$3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
