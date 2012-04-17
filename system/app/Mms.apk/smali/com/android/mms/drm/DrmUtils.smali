.class public Lcom/android/mms/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# static fields
.field private static final DRM_TEMP_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://mms/drm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/drm/DrmUtils;->DRM_TEMP_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanupStorage(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/drm/DrmUtils;->DRM_TEMP_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v1, v2, v2}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static insert(Landroid/content/Context;Lcom/android/mms/drm/DrmWrapper;)Landroid/net/Uri;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/android/mms/drm/DrmUtils;->DRM_TEMP_URI:Landroid/net/Uri;

    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {p0, v0, v5, v6}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    const/4 v3, 0x0

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/drm/DrmWrapper;->getDecryptedData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v3, 0x0

    :cond_1
    :goto_1
    return-object v4

    :catch_0
    move-exception v2

    const/4 v4, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v5, "Mms/DrmUtils"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v3, 0x0

    :cond_2
    :goto_2
    throw v5

    :catch_2
    move-exception v2

    const-string v6, "Mms/DrmUtils"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
