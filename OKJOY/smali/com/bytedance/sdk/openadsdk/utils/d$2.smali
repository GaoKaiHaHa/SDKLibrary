.class final Lcom/bytedance/sdk/openadsdk/utils/d$2;
.super Lcom/bytedance/sdk/openadsdk/i/c;
.source "AdLocationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/b;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/d$2;->a:Lcom/bytedance/sdk/openadsdk/i/b;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/c;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/d$2;->a:Lcom/bytedance/sdk/openadsdk/i/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/b;->run()V

    .line 147
    return-void
.end method