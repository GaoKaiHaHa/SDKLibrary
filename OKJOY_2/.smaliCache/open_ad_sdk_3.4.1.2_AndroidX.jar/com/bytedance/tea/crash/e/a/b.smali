.class public Lcom/bytedance/tea/crash/e/a/b;
.super Ljava/lang/Object;
.source "ActivityDataManager.java"


# instance fields
.field private a:Landroid/app/Application;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:J

.field private o:Ljava/lang/String;

.field private p:J

.field private q:I

.field private final r:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/e/a/b;->c:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/e/a/b;->d:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/e/a/b;->e:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/e/a/b;->f:Ljava/util/List;

    .line 63
    new-instance v0, Lcom/bytedance/tea/crash/e/a/b$1;

    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/e/a/b$1;-><init>(Lcom/bytedance/tea/crash/e/a/b;)V

    iput-object v0, p0, Lcom/bytedance/tea/crash/e/a/b;->r:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 56
    iput-object p1, p0, Lcom/bytedance/tea/crash/e/a/b;->b:Landroid/content/Context;

    .line 57
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_30

    .line 58
    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/bytedance/tea/crash/e/a/b;->a:Landroid/app/Application;

    .line 60
    :cond_30
    invoke-direct {p0}, Lcom/bytedance/tea/crash/e/a/b;->c()V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/bytedance/tea/crash/e/a/b;J)J
    .registers 3

    .line 29
    iput-wide p1, p0, Lcom/bytedance/tea/crash/e/a/b;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/tea/crash/e/a/b;)Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/bytedance/tea/crash/e/a/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/tea/crash/e/a/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/bytedance/tea/crash/e/a/b;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;J)Lorg/json/JSONObject;
    .registers 6

    .line 171
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 173
    :try_start_5
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string p1, "time"

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_f} :catch_10

    .line 177
    goto :goto_14

    .line 175
    :catch_10
    move-exception p1

    .line 176
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 178
    :goto_14
    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/tea/crash/e/a/b;J)J
    .registers 3

    .line 29
    iput-wide p1, p0, Lcom/bytedance/tea/crash/e/a/b;->j:J

    return-wide p1
.end method

.method static synthetic b(Lcom/bytedance/tea/crash/e/a/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/bytedance/tea/crash/e/a/b;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/bytedance/tea/crash/e/a/b;)Ljava/util/List;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/bytedance/tea/crash/e/a/b;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/tea/crash/e/a/b;)J
    .registers 3

    .line 29
    iget-wide v0, p0, Lcom/bytedance/tea/crash/e/a/b;->h:J

    return-wide v0
.end method

.method static synthetic c(Lcom/bytedance/tea/crash/e/a/b;J)J
    .registers 3

    .line 29
    iput-wide p1, p0, Lcom/bytedance/tea/crash/e/a/b;->l:J

    return-wide p1
.end method

.method static synthetic c(Lcom/bytedance/tea/crash/e/a/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/bytedance/tea/crash/e/a/b;->k:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .registers 3

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/b;->a:Landroid/app/Application;

    if-eqz v0, :cond_f

    .line 122
    iget-object v1, p0, Lcom/bytedance/tea/crash/e/a/b;->r:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 124
    :cond_f
    return-void
.end method

.method static synthetic d(Lcom/bytedance/tea/crash/e/a/b;J)J
    .registers 3

    .line 29
    iput-wide p1, p0, Lcom/bytedance/tea/crash/e/a/b;->n:J

    return-wide p1
.end method

.method static synthetic d(Lcom/bytedance/tea/crash/e/a/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/bytedance/tea/crash/e/a/b;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/bytedance/tea/crash/e/a/b;)Ljava/util/List;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/bytedance/tea/crash/e/a/b;->d:Ljava/util/List;

    return-object p0
.end method

.method private d()Lorg/json/JSONArray;
    .registers 6

    .line 132
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/bytedance/tea/crash/e/a/b;->c:Ljava/util/List;

    if-eqz v1, :cond_3a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_3a

    .line 136
    :cond_10
    const/4 v1, 0x0

    :goto_11
    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a/b;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 138
    :try_start_19
    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a/b;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    iget-object v3, p0, Lcom/bytedance/tea/crash/e/a/b;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 140
    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/tea/crash/e/a/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_38

    .line 143
    nop

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 141
    :catchall_38
    move-exception v1

    .line 145
    :cond_39
    return-object v0

    .line 134
    :cond_3a
    :goto_3a
    return-object v0
.end method

.method static synthetic e(Lcom/bytedance/tea/crash/e/a/b;)I
    .registers 3

    .line 29
    iget v0, p0, Lcom/bytedance/tea/crash/e/a/b;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/tea/crash/e/a/b;->q:I

    return v0
.end method

.method static synthetic e(Lcom/bytedance/tea/crash/e/a/b;J)J
    .registers 3

    .line 29
    iput-wide p1, p0, Lcom/bytedance/tea/crash/e/a/b;->p:J

    return-wide p1
.end method

.method static synthetic e(Lcom/bytedance/tea/crash/e/a/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/bytedance/tea/crash/e/a/b;->o:Ljava/lang/String;

    return-object p1
.end method

.method private e()Lorg/json/JSONArray;
    .registers 6

    .line 154
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/bytedance/tea/crash/e/a/b;->e:Ljava/util/List;

    if-eqz v1, :cond_3a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_3a

    .line 158
    :cond_10
    const/4 v1, 0x0

    :goto_11
    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a/b;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 160
    :try_start_19
    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a/b;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 161
    iget-object v3, p0, Lcom/bytedance/tea/crash/e/a/b;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 162
    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/tea/crash/e/a/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_38

    .line 165
    nop

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 163
    :catchall_38
    move-exception v1

    .line 167
    :cond_39
    return-object v0

    .line 156
    :cond_3a
    :goto_3a
    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/tea/crash/e/a/b;)I
    .registers 3

    .line 29
    iget v0, p0, Lcom/bytedance/tea/crash/e/a/b;->q:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/bytedance/tea/crash/e/a/b;->q:I

    return v0
.end method

.method static synthetic g(Lcom/bytedance/tea/crash/e/a/b;)Ljava/util/List;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/bytedance/tea/crash/e/a/b;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/bytedance/tea/crash/e/a/b;)Ljava/util/List;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/bytedance/tea/crash/e/a/b;->f:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 6

    .line 187
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 190
    :try_start_5
    const-string v1, "last_create_activity"

    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a/b;->g:Ljava/lang/String;

    iget-wide v3, p0, Lcom/bytedance/tea/crash/e/a/b;->h:J

    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/tea/crash/e/a/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v1, "last_start_activity"

    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a/b;->i:Ljava/lang/String;

    iget-wide v3, p0, Lcom/bytedance/tea/crash/e/a/b;->j:J

    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/tea/crash/e/a/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v1, "last_resume_activity"

    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a/b;->k:Ljava/lang/String;

    iget-wide v3, p0, Lcom/bytedance/tea/crash/e/a/b;->l:J

    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/tea/crash/e/a/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v1, "last_pause_activity"

    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a/b;->m:Ljava/lang/String;

    iget-wide v3, p0, Lcom/bytedance/tea/crash/e/a/b;->n:J

    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/tea/crash/e/a/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v1, "last_stop_activity"

    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a/b;->o:Ljava/lang/String;

    iget-wide v3, p0, Lcom/bytedance/tea/crash/e/a/b;->p:J

    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/tea/crash/e/a/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v1, "alive_activities"

    invoke-direct {p0}, Lcom/bytedance/tea/crash/e/a/b;->d()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v1, "finish_activities"

    invoke-direct {p0}, Lcom/bytedance/tea/crash/e/a/b;->e()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_58} :catch_59

    .line 202
    goto :goto_5a

    .line 201
    :catch_59
    move-exception v1

    .line 203
    :goto_5a
    return-object v0
.end method

.method public b()Lorg/json/JSONArray;
    .registers 7

    .line 212
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 214
    :try_start_5
    iget-object v1, p0, Lcom/bytedance/tea/crash/e/a/b;->b:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 215
    if-nez v1, :cond_12

    .line 216
    return-object v0

    .line 218
    :cond_12
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 219
    if-nez v1, :cond_1a

    .line 220
    return-object v0

    .line 222
    :cond_1a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 223
    if-eqz v2, :cond_1e

    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_7a

    if-nez v3, :cond_31

    .line 224
    goto :goto_1e

    .line 227
    :cond_31
    :try_start_31
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 228
    const-string v4, "id"

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    const-string v4, "package_name"

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v4, "description"

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v4, "number_of_activities"

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    const-string v4, "number_of_running_activities"

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 233
    const-string v4, "topActivity"

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v4, "baseActivity"

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_76} :catch_77
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_76} :catch_7a

    .line 237
    goto :goto_78

    .line 236
    :catch_77
    move-exception v2

    .line 238
    :goto_78
    goto :goto_1e

    .line 241
    :cond_79
    goto :goto_7b

    .line 239
    :catch_7a
    move-exception v1

    .line 242
    :goto_7b
    return-object v0
.end method