.class public final Lcom/qq/e/comm/net/rr/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/comm/net/rr/a$b;,
        Lcom/qq/e/comm/net/rr/a$a;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static b:Ljavax/crypto/Cipher;

.field private static c:Ljavax/crypto/Cipher;

.field private static d:Ljava/lang/String;

.field private static e:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_26

    sput-object v0, Lcom/qq/e/comm/net/rr/a;->a:[B

    sput-object v1, Lcom/qq/e/comm/net/rr/a;->b:Ljavax/crypto/Cipher;

    sput-object v1, Lcom/qq/e/comm/net/rr/a;->c:Ljavax/crypto/Cipher;

    const-string v0, "AES/%s/PKCS7Padding"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ECB"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/net/rr/a;->d:Ljava/lang/String;

    const-string v0, "4M3PpUC4Vu1uMp+Y0Mxd+vfc6v4ggJAINfgTlH74pis="

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/net/rr/a;->e:[B

    return-void

    :array_26
    .array-data 1
        0x5bt
        -0x3et
    .end array-data
.end method

.method private static declared-synchronized a()Ljavax/crypto/Cipher;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/net/rr/a$a;
        }
    .end annotation

    const-class v1, Lcom/qq/e/comm/net/rr/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/qq/e/comm/net/rr/a;->b:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/qq/e/comm/net/rr/a;->b:Ljavax/crypto/Cipher;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2c

    :goto_9
    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    sget-object v0, Lcom/qq/e/comm/net/rr/a;->d:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/qq/e/comm/net/rr/a;->e:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    sput-object v0, Lcom/qq/e/comm/net/rr/a;->b:Ljavax/crypto/Cipher;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_20} :catch_23
    .catchall {:try_start_b .. :try_end_20} :catchall_2c

    :try_start_20
    sget-object v0, Lcom/qq/e/comm/net/rr/a;->b:Ljavax/crypto/Cipher;

    goto :goto_9

    :catch_23
    move-exception v0

    new-instance v2, Lcom/qq/e/comm/net/rr/a$a;

    const-string v3, "Fail To Init Cipher"

    invoke-direct {v2, v3, v0}, Lcom/qq/e/comm/net/rr/a$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/net/rr/a$b;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_a
    sget-object v2, Lcom/qq/e/comm/net/rr/a;->a:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {p0}, Lcom/qq/e/comm/a;->a([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/comm/net/rr/a;->c([B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_2a

    move-result-object v0

    return-object v0

    :catch_2a
    move-exception v0

    new-instance v1, Lcom/qq/e/comm/net/rr/a$b;

    const-string v2, "Exception while packaging byte array"

    invoke-direct {v1, v2, v0}, Lcom/qq/e/comm/net/rr/a$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static declared-synchronized b()Ljavax/crypto/Cipher;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/net/rr/a$a;
        }
    .end annotation

    const-class v1, Lcom/qq/e/comm/net/rr/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/qq/e/comm/net/rr/a;->c:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/qq/e/comm/net/rr/a;->c:Ljavax/crypto/Cipher;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2c

    :goto_9
    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    sget-object v0, Lcom/qq/e/comm/net/rr/a;->d:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/qq/e/comm/net/rr/a;->e:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    sput-object v0, Lcom/qq/e/comm/net/rr/a;->c:Ljavax/crypto/Cipher;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_20} :catch_23
    .catchall {:try_start_b .. :try_end_20} :catchall_2c

    :try_start_20
    sget-object v0, Lcom/qq/e/comm/net/rr/a;->c:Ljavax/crypto/Cipher;

    goto :goto_9

    :catch_23
    move-exception v0

    new-instance v2, Lcom/qq/e/comm/net/rr/a$a;

    const-string v3, "Fail To Init Cipher"

    invoke-direct {v2, v3, v0}, Lcom/qq/e/comm/net/rr/a$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b([B)[B
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/net/rr/a$b;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x4

    const/4 v3, 0x1

    if-eqz p0, :cond_9

    array-length v0, p0

    if-ge v0, v1, :cond_11

    :cond_9
    new-instance v0, Lcom/qq/e/comm/net/rr/a$b;

    const-string v1, "S2SS Package FormatError"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/net/rr/a$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_11
    :try_start_11
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I

    sget-object v0, Lcom/qq/e/comm/net/rr/a;->a:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v0, v2, :cond_3f

    sget-object v0, Lcom/qq/e/comm/net/rr/a;->a:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    if-ne v0, v2, :cond_3f

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    if-ne v3, v0, :cond_3f

    const/4 v0, 0x3

    aget-byte v0, v1, v0

    if-eq v4, v0, :cond_51

    :cond_3f
    new-instance v0, Lcom/qq/e/comm/net/rr/a$b;

    const-string v1, "S2SS Package Magic/Version FormatError"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/net/rr/a$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_48} :catch_48

    :catch_48
    move-exception v0

    new-instance v1, Lcom/qq/e/comm/net/rr/a$b;

    const-string v2, "Exception while packaging byte array"

    invoke-direct {v1, v2, v0}, Lcom/qq/e/comm/net/rr/a$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_51
    const/4 v0, 0x4

    :try_start_52
    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/net/rr/a;->d([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/a;->b([B)[B
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5e} :catch_48

    move-result-object v0

    return-object v0
.end method

.method private static c([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/net/rr/a$a;
        }
    .end annotation

    invoke-static {}, Lcom/qq/e/comm/net/rr/a;->a()Ljavax/crypto/Cipher;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Lcom/qq/e/comm/net/rr/a$a;

    const-string v2, "Exception While encrypt byte array"

    invoke-direct {v1, v2, v0}, Lcom/qq/e/comm/net/rr/a$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static d([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/net/rr/a$a;
        }
    .end annotation

    invoke-static {}, Lcom/qq/e/comm/net/rr/a;->b()Ljavax/crypto/Cipher;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Lcom/qq/e/comm/net/rr/a$a;

    const-string v2, "Exception While dencrypt byte array"

    invoke-direct {v1, v2, v0}, Lcom/qq/e/comm/net/rr/a$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
