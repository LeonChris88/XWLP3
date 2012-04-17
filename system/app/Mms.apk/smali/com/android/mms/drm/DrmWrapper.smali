.class public Lcom/android/mms/drm/DrmWrapper;
.super Ljava/lang/Object;
.source "DrmWrapper.java"


# static fields
.field private static sDrmClient:Landroid/drm/DrmManagerClient;


# instance fields
.field errorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mData:[B

.field private final mDataUri:Landroid/net/Uri;

.field public mDrmFileName:Ljava/lang/String;

.field public mDrmFilePath:Ljava/lang/String;

.field private mDrmMimeType:Ljava/lang/String;

.field private mDrmType:I

.field private mFilePath:Ljava/lang/String;

.field private mLicenseStatus:I

.field private mOrignalDrmMimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/drm/DrmWrapper;->sDrmClient:Landroid/drm/DrmManagerClient;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mFilePath:Ljava/lang/String;

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmMimeType:Ljava/lang/String;

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mOrignalDrmMimeType:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmType:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/drm/DrmWrapper;->mLicenseStatus:I

    new-instance v2, Lcom/android/mms/drm/DrmWrapper$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/drm/DrmWrapper$1;-><init>(Lcom/android/mms/drm/DrmWrapper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->errorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    const-string v2, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DrmWrapper : mDataUri="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    const-string v2, "_data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "cl"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    :cond_2
    const-string v2, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DrmWrapper : DRM filepath ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DrmWrapper : DRM fileName ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    if-nez v2, :cond_5

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Content-Type or data may not be null."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_4
    throw v2

    :cond_5
    :try_start_2
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    if-ltz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    add-int/lit8 v4, v17, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :cond_6
    const-string v2, "dm"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/mms/drm/DrmWrapper;->convertDM2DCF(Landroid/drm/DrmManagerClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v21, v10

    const-string v2, "cl"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    if-eqz v15, :cond_9

    const/16 v2, 0x2e

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    if-ltz v13, :cond_7

    add-int/lit8 v2, v13, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    :cond_7
    const-string v2, "dm"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v16, "dcf"

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v15, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_9
    move-object/from16 v22, v15

    const-string v2, "_data"

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cl"

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    const-string v2, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " destfile path!!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/drm/DrmWrapper;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mDrmMimeType:Ljava/lang/String;

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v11, v2, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v2, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Original Content Mime Type is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/mms/drm/DrmWrapper;->registerDRMFile(Landroid/drm/DrmManagerClient;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_c
    :try_start_3
    const-string v2, "DrmWrapper"

    const-string v4, " destfile null !!"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_d
    const-string v2, "dcf"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/16 v22, 0x0

    const-string v2, "cl"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    if-eqz v15, :cond_a

    const/16 v2, 0x2e

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    if-ltz v13, :cond_e

    add-int/lit8 v2, v13, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    :cond_e
    const-string v2, "dm"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v16, "dcf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v15, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v15

    const-string v2, "cl"

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method public static acqueireLicense(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v1

    new-instance v3, Landroid/drm/DrmInfoRequest;

    const/4 v7, 0x3

    const-string v8, "application/vnd.oma.drm.content"

    invoke-direct {v3, v7, v8}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    const-string v7, "drm_path"

    invoke-virtual {v3, v7, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v4

    const-string v7, "URL"

    invoke-virtual {v4, v7}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x1000

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x1

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v7, 0x1

    :goto_0
    return v7

    :catch_0
    move-exception v2

    const-string v7, "DrmWrapper"

    const-string v8, "could not find a suitable activity for launching license url"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_0
.end method

.method private convertDM2DCF(Landroid/drm/DrmManagerClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-eqz p1, :cond_0

    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/4 v4, 0x7

    const-string v5, "application/vnd.oma.drm.content"

    invoke-direct {v2, v4, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    const-string v4, "drm_path"

    invoke-virtual {v2, v4, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "status"

    const-string v5, "fail"

    invoke-virtual {v2, v4, v5}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "DrmWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mediascanner::getDrmFileType : Drm Info Request created with mimetype "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/drm/DrmInfoRequest;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    const-string v4, "status"

    invoke-virtual {v1, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/drm/DrmWrapper;->getObjString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DrmWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mediascanner::getDrmFileType : processRequest status is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "DrmWrapper"

    const-string v5, "Mediascanner::getDrmFileType :: processdrmRequest Success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v4, "drm_path"

    invoke-virtual {v1, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/drm/DrmWrapper;->getObjString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const-string v4, "DrmWrapper"

    const-string v5, "Mediascanner::getDrmFileType :: processdrmRequest Fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDrmClient()Landroid/drm/DrmManagerClient;
    .locals 2

    sget-object v0, Lcom/android/mms/drm/DrmWrapper;->sDrmClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_0

    new-instance v0, Landroid/drm/DrmManagerClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/drm/DrmWrapper;->sDrmClient:Landroid/drm/DrmManagerClient;

    :cond_0
    sget-object v0, Lcom/android/mms/drm/DrmWrapper;->sDrmClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method public static getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ".dcf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/vnd.oma.drm.content"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".avi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "video/mux/AVI"

    goto :goto_0

    :cond_1
    const-string v0, ".mkv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "video/mux/MKV"

    goto :goto_0

    :cond_2
    const-string v0, ".divx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "video/mux/DivX"

    goto :goto_0

    :cond_3
    const-string v0, ".pyv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".pya"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "mime type for playready"

    goto :goto_0

    :cond_5
    const-string v0, ".wmv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ".wma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "mime type for WMDRM"

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getObjString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private registerDRMFile(Landroid/drm/DrmManagerClient;Ljava/lang/String;)V
    .locals 6

    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x8

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v1, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    const-string v3, "drm_path"

    invoke-virtual {v1, v3, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    const-string v3, "status"

    invoke-virtual {v0, v3}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/drm/DrmWrapper;->getObjString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mediascanner::TYPE_REGISTER_DRM_FILE : processRequest status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "DrmWrapper"

    const-string v4, "Mediascanner::TYPE_REGISTER_DRM_FILE :: processdrmRequest Success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v3, "DrmWrapper"

    const-string v4, "Mediascanner::TYPE_REGISTER_DRM_FILE :: processdrmRequest Fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public consumeRights()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v14, 0x1c

    const/4 v10, 0x1

    const-string v11, "DrmWrapper"

    const-string v12, "consumeRights : DRM consumeRightStart~!!"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v3

    iget-object v11, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-string v11, "image/"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "SISODRM "

    const-string v12, "DISPLAY"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    const/4 v12, 0x7

    invoke-virtual {v3, v11, v12}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    const/4 v7, 0x7

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v2, :cond_4

    const-string v11, "license_category"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v11, "SISODRMTESTAPP"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "licensecategory :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "1"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Count Based: Max:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "max_repeat_count"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Available :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "remaining_repeat_count"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/drm/DrmWrapper;->isAllowedToForward()Z

    move-result v11

    if-ne v11, v10, :cond_6

    new-instance v5, Landroid/drm/DrmInfoRequest;

    iget-object v11, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmMimeType:Ljava/lang/String;

    invoke-direct {v5, v14, v11}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    const-string v11, "drm_path"

    iget-object v12, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v11, "drmpermission_type"

    invoke-virtual {v5, v11, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v4

    const-string v11, "status"

    invoke-virtual {v4, v11}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "success"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "DrmWrapper"

    const-string v12, "consumeRights Success"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v10

    :cond_0
    iget-object v11, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v3, v11, v10}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    const-string v11, "SISODRM "

    const-string v12, "PLAY"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_1
    const-string v11, "2"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DateTime Based: Start Time:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "license_start_time"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Expiry Time :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "license_expiry_time"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string v11, "0"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "Unlimited Consraint"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const-string v11, "UNKNOWN Constraint"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_4
    const-string v11, "Constraints are null:Usually this comes for FL"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    const-string v10, "DrmWrapper"

    const-string v11, "consumeRights Fail"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    new-instance v5, Landroid/drm/DrmInfoRequest;

    iget-object v11, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmMimeType:Ljava/lang/String;

    invoke-direct {v5, v14, v11}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    const-string v11, "drm_path"

    iget-object v12, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v11, "drmpermission_type"

    invoke-virtual {v5, v11, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v4

    const-string v11, "status"

    invoke-virtual {v4, v11}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "success"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "DrmWrapper"

    const-string v12, "consumeRights Success"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    const-string v11, "DrmWrapper"

    const-string v12, "consumeRights Fail"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mContentType:Ljava/lang/String;

    const-string v1, "DrmWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/drm/DrmWrapper;->mContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  DRM filepath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mContentType:Ljava/lang/String;

    return-object v1
.end method

.method public getDecryptedData()[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v12, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x0

    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-gtz v8, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v2

    iget-object v8, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    const/4 v9, 0x7

    invoke-virtual {v2, v8, v9}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_4

    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v8, 0xa

    iget-object v9, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmMimeType:Ljava/lang/String;

    invoke-direct {v1, v8, v9}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    const-string v8, "drm_path"

    iget-object v9, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "LENGTH"

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v5

    const-string v8, "status"

    invoke-virtual {v5, v8}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/drm/DrmWrapper;->getObjString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BitMapFactory::decodeFile : processRequest status is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v8, "success"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "BitMapFactory::decodeFile :: processdrmRequest Success"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v8

    array-length v8, v8

    new-array v0, v8, [B

    invoke-virtual {v5}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v8

    invoke-virtual {v5}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v9

    array-length v9, v9

    invoke-static {v8, v11, v0, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "BitMapFactory::decodeFile ::custom api returned null"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BitMapFactory::decodeFile :: FAIL reason is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "INFO"

    invoke-virtual {v5, v10}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Rights not present. Handle here and show pop up for no license present"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getOriginalData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    return-object v0
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .locals 3

    const-string v0, "DrmWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmWrapper : mDataUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isAllowedToForward()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v0

    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v4, 0x11

    const-string v5, "application/vnd.oma.drm.content"

    invoke-direct {v2, v4, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    const-string v4, "drm_path"

    iget-object v5, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "status"

    const-string v5, "fail"

    invoke-virtual {v2, v4, v5}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    const-string v4, "result"

    invoke-virtual {v1, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/drm/DrmWrapper;->getObjString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "DrmWrapper"

    const-string v5, "file is FL/CD"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    const-string v4, "DrmWrapper"

    const-string v5, "file is SD"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isRightsInstalled(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/drm/DrmWrapper;->mLicenseStatus:I

    iget v2, p0, Lcom/android/mms/drm/DrmWrapper;->mLicenseStatus:I

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
