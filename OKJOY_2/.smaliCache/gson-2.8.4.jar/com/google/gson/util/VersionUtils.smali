.class public Lcom/google/gson/util/VersionUtils;
.super Ljava/lang/Object;
.source "VersionUtils.java"


# static fields
.field private static final majorJavaVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    invoke-static {}, Lcom/google/gson/util/VersionUtils;->determineMajorJavaVersion()I

    move-result v0

    sput v0, Lcom/google/gson/util/VersionUtils;->majorJavaVersion:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static determineMajorJavaVersion()I
    .registers 4

    .line 27
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[._]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 29
    .local v1, "firstVer":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    array-length v3, v0

    if-le v3, v2, :cond_20

    .line 30
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 32
    :cond_20
    return v1
.end method

.method public static getMajorJavaVersion()I
    .registers 1

    .line 40
    sget v0, Lcom/google/gson/util/VersionUtils;->majorJavaVersion:I

    return v0
.end method

.method public static isJava9OrLater()Z
    .registers 2

    .line 47
    sget v0, Lcom/google/gson/util/VersionUtils;->majorJavaVersion:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
