.class final Lcom/tencent/bugly/proguard/n$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/n;->a(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/tencent/bugly/proguard/n;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/n;I)V
    .registers 3

    .line 255
    iput-object p1, p0, Lcom/tencent/bugly/proguard/n$2;->b:Lcom/tencent/bugly/proguard/n;

    iput p2, p0, Lcom/tencent/bugly/proguard/n$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 258
    iget-object v0, p0, Lcom/tencent/bugly/proguard/n$2;->b:Lcom/tencent/bugly/proguard/n;

    iget v1, p0, Lcom/tencent/bugly/proguard/n$2;->a:I

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/n;->b(Lcom/tencent/bugly/proguard/n;I)Z

    move-result v0

    .line 259
    iget-object v1, p0, Lcom/tencent/bugly/proguard/n$2;->b:Lcom/tencent/bugly/proguard/n;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/n;->c(Lcom/tencent/bugly/proguard/n;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/tencent/bugly/proguard/n$2;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/bugly/proguard/n$2;->b:Lcom/tencent/bugly/proguard/n;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/n;->a(Lcom/tencent/bugly/proguard/n;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    return-void
.end method
