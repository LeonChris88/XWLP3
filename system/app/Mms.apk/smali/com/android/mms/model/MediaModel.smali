.class public abstract Lcom/android/mms/model/MediaModel;
.super Lcom/android/mms/model/Model;
.source "MediaModel.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/model/MediaModel$MediaAction;
    }
.end annotation


# instance fields
.field protected mBegin:I

.field protected mContentType:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mData:[B

.field protected mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

.field protected mDuration:I

.field protected mFill:S

.field private final mMediaActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel$MediaAction;",
            ">;"
        }
    .end annotation
.end field

.field protected mSeekTo:I

.field protected mSize:I

.field protected mSrc:Ljava/lang/String;

.field protected mTag:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/mms/model/MediaModel;->initMediaSize()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    invoke-static {p1, p5}, Lcom/android/mms/drm/DrmUtils;->insert(Landroid/content/Context;Lcom/android/mms/drm/DrmWrapper;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {p5}, Lcom/android/mms/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    array-length v0, p5

    iput v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    return-void
.end method

.method private initMediaSize()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    iget-object v5, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    instance-of v5, v4, Ljava/io/FileInputStream;

    if-eqz v5, :cond_2

    move-object v0, v4

    check-cast v0, Ljava/io/FileInputStream;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, Lcom/android/mms/model/MediaModel;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    const/4 v5, -0x1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v6

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/model/MediaModel;->mSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v5, "Mms/media"

    const-string v6, "IOException caught while opening or reading stream"

    invoke-static {v5, v6, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v5, v2, Ljava/io/FileNotFoundException;

    if-eqz v5, :cond_4

    new-instance v5, Lcom/google/android/mms/MmsException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v5

    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_2
    throw v5

    :catch_1
    move-exception v2

    const-string v5, "Mms/media"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v5, v6, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v5, "Mms/media"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v5, v6, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v6, "Mms/media"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v6, v7, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static isMmsUri(Landroid/net/Uri;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBegin()I
    .locals 1

    iget v0, p0, Lcom/android/mms/model/MediaModel;->mBegin:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_0
.end method

.method public getData()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual {v1}, Lcom/android/mms/drm/DrmWrapper;->consumeRights()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    const v3, 0x7f090021

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrmFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmObject()Lcom/android/mms/drm/DrmWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    return v0
.end method

.method public getMediaSize()I
    .locals 1

    iget v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    return v0
.end method

.method public getSeekTo()I
    .locals 1

    iget v0, p0, Lcom/android/mms/model/MediaModel;->mSeekTo:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v0, "Mms/media"

    const-string v1, "MedieModel getUri(): mUri is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUriWithDrmCheck()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual {v0}, Lcom/android/mms/drm/DrmWrapper;->consumeRights()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Insufficient DRM rights."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasDrmRight()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getDrmFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/drm/DrmWrapper;->isRightsInstalled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected initMediaDuration()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    iget-object v4, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Uri may not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_1
    iput v1, p0, Lcom/android/mms/model/MediaModel;->mDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :catch_0
    move-exception v2

    :try_start_1
    const-string v4, "Mms/media"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaMetadataRetriever failed to get duration for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v4, Lcom/google/android/mms/MmsException;

    invoke-direct {v4, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v4
.end method

.method public isAllowedToForward()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual {v0}, Lcom/android/mms/drm/DrmWrapper;->isAllowedToForward()Z

    move-result v0

    return v0
.end method

.method public isAudio()Z
    .locals 2

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDrmProtected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImage()Z
    .locals 2

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "img"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPlayable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isText()Z
    .locals 2

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideo()Z
    .locals 2

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBegin(I)V
    .locals 1

    iput p1, p0, Lcom/android/mms/model/MediaModel;->mBegin:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/MediaModel;->notifyModelChanged(Z)V

    return-void
.end method

.method public setDuration(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_0

    if-gez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->initMediaDuration()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/MediaModel;->notifyModelChanged(Z)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/media"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    iput p1, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    goto :goto_0
.end method

.method public setFill(S)V
    .locals 1

    iput-short p1, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/MediaModel;->notifyModelChanged(Z)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    return-void
.end method

.method setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    return-void
.end method
