.class public final Lcom/bytedance/sdk/openadsdk/component/reward/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static tt_video_progress_max:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 308
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$integer;->tt_video_progress_max:I

    sput v0, Lcom/bytedance/sdk/openadsdk/component/reward/R$integer;->tt_video_progress_max:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
