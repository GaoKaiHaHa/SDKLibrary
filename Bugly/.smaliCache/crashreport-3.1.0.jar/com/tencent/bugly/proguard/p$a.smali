.class final Lcom/tencent/bugly/proguard/p$a;
.super Ljava/lang/Thread;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/tencent/bugly/proguard/o;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/ContentValues;

.field private e:Z

.field private f:[Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:[Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:[B

.field private synthetic r:Lcom/tencent/bugly/proguard/p;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/p;ILcom/tencent/bugly/proguard/o;)V
    .registers 4

    .line 764
    iput-object p1, p0, Lcom/tencent/bugly/proguard/p$a;->r:Lcom/tencent/bugly/proguard/p;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 765
    iput p2, p0, Lcom/tencent/bugly/proguard/p$a;->a:I

    .line 766
    iput-object p3, p0, Lcom/tencent/bugly/proguard/p$a;->b:Lcom/tencent/bugly/proguard/o;

    .line 767
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;[B)V
    .registers 4

    .line 795
    iput p1, p0, Lcom/tencent/bugly/proguard/p$a;->o:I

    .line 796
    iput-object p2, p0, Lcom/tencent/bugly/proguard/p$a;->p:Ljava/lang/String;

    .line 797
    iput-object p3, p0, Lcom/tencent/bugly/proguard/p$a;->q:[B

    .line 798
    return-void
.end method

.method public final a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 777
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/p$a;->e:Z

    .line 778
    iput-object p2, p0, Lcom/tencent/bugly/proguard/p$a;->c:Ljava/lang/String;

    .line 779
    iput-object p3, p0, Lcom/tencent/bugly/proguard/p$a;->f:[Ljava/lang/String;

    .line 780
    iput-object p4, p0, Lcom/tencent/bugly/proguard/p$a;->g:Ljava/lang/String;

    .line 781
    iput-object p5, p0, Lcom/tencent/bugly/proguard/p$a;->h:[Ljava/lang/String;

    .line 782
    iput-object p6, p0, Lcom/tencent/bugly/proguard/p$a;->i:Ljava/lang/String;

    .line 783
    iput-object p7, p0, Lcom/tencent/bugly/proguard/p$a;->j:Ljava/lang/String;

    .line 784
    iput-object p8, p0, Lcom/tencent/bugly/proguard/p$a;->k:Ljava/lang/String;

    .line 785
    iput-object p9, p0, Lcom/tencent/bugly/proguard/p$a;->l:Ljava/lang/String;

    .line 786
    return-void
.end method

.method public final run()V
    .registers 18

    .line 811
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/bugly/proguard/p$a;->a:I

    packed-switch v1, :pswitch_data_6a

    goto :goto_68

    .line 832
    :pswitch_8
    iget-object v1, v0, Lcom/tencent/bugly/proguard/p$a;->r:Lcom/tencent/bugly/proguard/p;

    iget v2, v0, Lcom/tencent/bugly/proguard/p$a;->o:I

    iget-object v3, v0, Lcom/tencent/bugly/proguard/p$a;->p:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/p$a;->b:Lcom/tencent/bugly/proguard/o;

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/p;ILjava/lang/String;Lcom/tencent/bugly/proguard/o;)Z

    goto :goto_68

    .line 829
    :pswitch_14
    iget-object v1, v0, Lcom/tencent/bugly/proguard/p$a;->r:Lcom/tencent/bugly/proguard/p;

    iget v2, v0, Lcom/tencent/bugly/proguard/p$a;->o:I

    iget-object v3, v0, Lcom/tencent/bugly/proguard/p$a;->b:Lcom/tencent/bugly/proguard/o;

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/p;ILcom/tencent/bugly/proguard/o;)Ljava/util/Map;

    .line 830
    return-void

    .line 826
    :pswitch_1e
    iget-object v1, v0, Lcom/tencent/bugly/proguard/p$a;->r:Lcom/tencent/bugly/proguard/p;

    iget v2, v0, Lcom/tencent/bugly/proguard/p$a;->o:I

    iget-object v3, v0, Lcom/tencent/bugly/proguard/p$a;->p:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/p$a;->q:[B

    iget-object v5, v0, Lcom/tencent/bugly/proguard/p$a;->b:Lcom/tencent/bugly/proguard/o;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/p;ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;)Z

    .line 827
    return-void

    .line 819
    :pswitch_2c
    iget-object v6, v0, Lcom/tencent/bugly/proguard/p$a;->r:Lcom/tencent/bugly/proguard/p;

    iget-boolean v7, v0, Lcom/tencent/bugly/proguard/p$a;->e:Z

    iget-object v8, v0, Lcom/tencent/bugly/proguard/p$a;->c:Ljava/lang/String;

    iget-object v9, v0, Lcom/tencent/bugly/proguard/p$a;->f:[Ljava/lang/String;

    iget-object v10, v0, Lcom/tencent/bugly/proguard/p$a;->g:Ljava/lang/String;

    iget-object v11, v0, Lcom/tencent/bugly/proguard/p$a;->h:[Ljava/lang/String;

    iget-object v12, v0, Lcom/tencent/bugly/proguard/p$a;->i:Ljava/lang/String;

    iget-object v13, v0, Lcom/tencent/bugly/proguard/p$a;->j:Ljava/lang/String;

    iget-object v14, v0, Lcom/tencent/bugly/proguard/p$a;->k:Ljava/lang/String;

    iget-object v15, v0, Lcom/tencent/bugly/proguard/p$a;->l:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/p$a;->b:Lcom/tencent/bugly/proguard/o;

    move-object/from16 v16, v1

    invoke-static/range {v6 .. v16}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/p;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)Landroid/database/Cursor;

    move-result-object v1

    .line 821
    if-eqz v1, :cond_68

    .line 822
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    .line 816
    :pswitch_4e
    iget-object v1, v0, Lcom/tencent/bugly/proguard/p$a;->r:Lcom/tencent/bugly/proguard/p;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/p$a;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/p$a;->m:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/p$a;->n:[Ljava/lang/String;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/p$a;->b:Lcom/tencent/bugly/proguard/o;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/p;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)I

    .line 817
    return-void

    .line 813
    :pswitch_5c
    iget-object v1, v0, Lcom/tencent/bugly/proguard/p$a;->r:Lcom/tencent/bugly/proguard/p;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/p$a;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/p$a;->d:Landroid/content/ContentValues;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/p$a;->b:Lcom/tencent/bugly/proguard/o;

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/p;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/o;)J

    .line 814
    return-void

    .line 833
    :cond_68
    :goto_68
    return-void

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_4e
        :pswitch_2c
        :pswitch_1e
        :pswitch_14
        :pswitch_8
    .end packed-switch
.end method
