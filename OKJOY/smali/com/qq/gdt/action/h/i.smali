.class public Lcom/qq/gdt/action/h/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/InputStream;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a(Ljava/io/OutputStream;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/qq/gdt/action/h/i;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v0

    goto :goto_b

    :cond_18
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_19} :catch_66
    .catchall {:try_start_8 .. :try_end_19} :catchall_5b

    move-result v3

    if-nez v3, :cond_23

    invoke-static {p0}, Lcom/qq/gdt/action/h/i;->a(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/gdt/action/h/i;->a(Ljava/io/OutputStream;)V

    goto :goto_6

    :cond_23
    :try_start_23
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_28} :catch_66
    .catchall {:try_start_23 .. :try_end_28} :catchall_5b

    const/16 v2, 0x1000

    :try_start_2a
    new-array v2, v2, [B

    :goto_2c
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_53

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_36} :catch_37
    .catchall {:try_start_2a .. :try_end_36} :catchall_63

    goto :goto_2c

    :catch_37
    move-exception v1

    move-object v2, v3

    :goto_39
    :try_start_39
    const-string v3, "Exception while copy from InputStream to File %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_39 .. :try_end_4c} :catchall_5b

    invoke-static {p0}, Lcom/qq/gdt/action/h/i;->a(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/gdt/action/h/i;->a(Ljava/io/OutputStream;)V

    goto :goto_6

    :cond_53
    invoke-static {p0}, Lcom/qq/gdt/action/h/i;->a(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/qq/gdt/action/h/i;->a(Ljava/io/OutputStream;)V

    move v0, v1

    goto :goto_6

    :catchall_5b
    move-exception v0

    :goto_5c
    invoke-static {p0}, Lcom/qq/gdt/action/h/i;->a(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/gdt/action/h/i;->a(Ljava/io/OutputStream;)V

    throw v0

    :catchall_63
    move-exception v0

    move-object v2, v3

    goto :goto_5c

    :catch_66
    move-exception v1

    goto :goto_39
.end method