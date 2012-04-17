.class public Lcom/android/settings/flipfont/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FontWriter"

    sput-object v0, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeFilePermission : File permission error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 15

    move-object/from16 v10, p2

    move-object/from16 v9, p1

    move-object/from16 v8, p3

    const-string v0, ""

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v12, Ljava/io/BufferedOutputStream;

    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/16 v12, 0x400

    new-array v1, v12, [B

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v10, v1}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_5

    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/4 v13, 0x0

    invoke-virtual {v12, v1, v13, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_1

    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_1
    :try_start_3
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_2
    :goto_2
    :try_start_4
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_3
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_4
    return-void

    :cond_5
    :try_start_5
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-static {v12}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v10, :cond_6

    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_6
    :goto_4
    :try_start_7
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_5
    :try_start_8
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v3

    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception v3

    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_4
    move-exception v3

    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_5
    move-exception v3

    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_6
    move-exception v3

    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v12

    if-eqz v10, :cond_8

    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_8
    :goto_6
    :try_start_a
    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v13, :cond_9

    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_9
    :goto_7
    :try_start_b
    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v13, :cond_a

    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :cond_a
    :goto_8
    throw v12

    :catch_7
    move-exception v3

    sget-object v13, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : myInputStream.close() error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_8
    move-exception v3

    sget-object v13, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : fOut.close() error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_9
    move-exception v3

    sget-object v13, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : bos.close() error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 8

    const/4 v6, 0x1

    const-string v5, "fonts"

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    aget-object v5, v4, v2

    invoke-direct {p0, v3, v5}, Lcom/android/settings/flipfont/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    sget-object v5, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeLoc : File permission error, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/app_fonts"

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    const-string v4, "persist.sys.flipfontpath"

    invoke-static {v4, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    sget-object v4, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v4, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : fOut.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_2
    :try_start_5
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v2

    sget-object v4, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : fOut.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_4
    move-exception v2

    sget-object v4, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v4

    :try_start_6
    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_3
    :goto_3
    :try_start_7
    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_4
    :goto_4
    throw v4

    :catch_5
    move-exception v2

    sget-object v5, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "writeLoc : osw.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_6
    move-exception v2

    sget-object v5, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "writeLoc : fOut.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
