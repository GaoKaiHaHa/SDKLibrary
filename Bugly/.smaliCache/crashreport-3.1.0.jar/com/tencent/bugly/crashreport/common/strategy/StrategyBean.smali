.class public Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;",
            ">;"
        }
    .end annotation
.end field

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# instance fields
.field public e:J

.field public f:J

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:J

.field public q:J

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public w:I

.field public x:J

.field public y:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-string v0, "http://rqd.uu.qq.com/rqd/sync"

    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    .line 34
    const-string v0, "http://android.bugly.qq.com/rqd/async"

    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    .line 35
    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->c:Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean$1;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean$1;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->e:J

    .line 38
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:J

    .line 39
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    .line 40
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->h:Z

    .line 41
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->i:Z

    .line 42
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    .line 43
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->k:Z

    .line 44
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->l:Z

    .line 45
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->m:Z

    .line 46
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->n:Z

    .line 47
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:Z

    .line 49
    const-wide/16 v4, 0x7530

    iput-wide v4, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:J

    .line 50
    sget-object v2, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    .line 51
    sget-object v2, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->s:Ljava/lang/String;

    .line 52
    sget-object v2, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->t:Ljava/lang/String;

    .line 55
    const/16 v2, 0xa

    iput v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->w:I

    .line 56
    const-wide/32 v4, 0x493e0

    iput-wide v4, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->x:J

    .line 57
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->y:J

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:J

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v1, "S(@L@L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->d:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 71
    const-string v1, "*^@K#K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->u:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->e:J

    .line 38
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:J

    .line 39
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    .line 40
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->h:Z

    .line 41
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->i:Z

    .line 42
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    .line 43
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->k:Z

    .line 44
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->l:Z

    .line 45
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->m:Z

    .line 46
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->n:Z

    .line 47
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:Z

    .line 49
    const-wide/16 v4, 0x7530

    iput-wide v4, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:J

    .line 50
    sget-object v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    .line 51
    sget-object v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->c:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->s:Ljava/lang/String;

    .line 52
    sget-object v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->t:Ljava/lang/String;

    .line 55
    const/16 v4, 0xa

    iput v4, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->w:I

    .line 56
    const-wide/32 v4, 0x493e0

    iput-wide v4, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->x:J

    .line 57
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->y:J

    .line 84
    :try_start_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    const-string v1, "S(@L@L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "@)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->d:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_5c

    move v0, v2

    goto :goto_5d

    :cond_5c
    move v0, v3

    :goto_5d
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_67

    move v0, v2

    goto :goto_68

    :cond_67
    move v0, v3

    :goto_68
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->h:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_72

    move v0, v2

    goto :goto_73

    :cond_72
    move v0, v3

    :goto_73
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->i:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->s:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->u:Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->v:Ljava/util/Map;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_95

    move v0, v2

    goto :goto_96

    :cond_95
    move v0, v3

    :goto_96
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_a0

    move v0, v2

    goto :goto_a1

    :cond_a0
    move v0, v3

    :goto_a1
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->k:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_ab

    move v0, v2

    goto :goto_ac

    :cond_ab
    move v0, v3

    :goto_ac
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->n:Z

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_b6

    move v0, v2

    goto :goto_b7

    :cond_b6
    move v0, v3

    :goto_b7
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_c7

    move v0, v2

    goto :goto_c8

    :cond_c7
    move v0, v3

    :goto_c8
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->l:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_d1

    goto :goto_d2

    :cond_d1
    move v2, v3

    :goto_d2
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->m:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:J

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->w:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->x:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->y:J
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_ec} :catch_ed

    .line 109
    return-void

    .line 107
    :catch_ed
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 119
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 121
    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->h:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 122
    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->i:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 123
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->v:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/z;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 127
    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 128
    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->k:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 129
    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->n:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 130
    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 131
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->l:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 133
    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->m:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 134
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->w:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->x:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->y:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    return-void
.end method
