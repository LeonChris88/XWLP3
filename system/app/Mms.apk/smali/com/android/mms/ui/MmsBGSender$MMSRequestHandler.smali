.class Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;
.super Landroid/os/AsyncTask;
.source "MmsBGSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsBGSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MMSRequestHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static mAppName:Ljava/lang/String;

.field private static mAudioFileName:Ljava/lang/String;

.field private static mAudioUri:Landroid/net/Uri;

.field private static mBitmap:Landroid/graphics/Bitmap;

.field private static mImageFileName:Ljava/lang/String;

.field private static mImageUri:Landroid/net/Uri;

.field private static mIsSaveAction:Z

.field private static mMsgID:Ljava/lang/String;

.field private static mMsgText:Ljava/lang/String;

.field private static mSubject:Ljava/lang/String;

.field private static mToAddress:[Ljava/lang/String;

.field private static mVideoFileName:Ljava/lang/String;

.field private static mVideoUri:Landroid/net/Uri;


# instance fields
.field private contentException:I

.field private mContext:Landroid/content/Context;

.field private mImgHeight:I

.field private mImgWidth:I

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mTempBitmapfile:Ljava/lang/String;

.field private mTempResizefile:Ljava/lang/String;

.field public mToastHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput v1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    new-instance v0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler$1;-><init>(Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToastHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    return-void
.end method

.method private AddAudio(Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/android/mms/model/AudioModel;

    iget-object v1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    iget-object v1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    return-void
.end method

.method private AddImage(Landroid/net/Uri;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/mms/model/ImageModel;

    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v1, v4, p1, v5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    :try_end_0
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    :goto_0
    return-void

    :catch_0
    move-exception v2

    :goto_1
    const-string v4, "MMSBGSender"

    const-string v5, "Resolution excepton, width and hight exceeds,  Resizing........"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->getResizedImageUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    new-instance v0, Lcom/android/mms/model/ImageModel;

    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v0, v4, v3, v5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_2
    const-string v4, "MMSBGSender"

    const-string v5, "ExceedMessageSizeException..resize image"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->getResizedImageUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    new-instance v0, Lcom/android/mms/model/ImageModel;

    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v0, v4, v3, v5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v0, v1

    goto :goto_1
.end method

.method private AddVideo(Landroid/net/Uri;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Lcom/android/mms/UnsupportContentTypeException;,
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->getVideosize(Landroid/net/Uri;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->checkMessageSize(I)V

    :cond_0
    new-instance v0, Lcom/android/mms/model/VideoModel;

    iget-object v2, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v0, v2, p1, v3}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    iget-object v2, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    return-void
.end method

.method private Convert([Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private declared-synchronized PostSendRequest(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/PduBody;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v6, "MMSBGSender"

    const-string v7, "Persisting in Draft Messsage."

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p3, v6}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string v6, "MMSBGSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URI In Draft"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v6, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mIsSaveAction:Z

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->getOrCreateThreadId([Ljava/lang/String;)J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, p2}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    const-string v6, "MMSBGSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting MMSMessageSender with Thread ID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v6, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v7

    int-to-long v7, v7

    invoke-direct {v5, v6, v1, v7, v8}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v6, v7}, Lcom/android/mms/transaction/MmsMessageSender;->sendMessage(J)Z

    move-result v0

    const-string v6, "MMSBGSender"

    const-string v7, "MMSRequestHandler sender.sendMessage  called"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v4

    :try_start_2
    const-string v6, "MMSBGSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", threadId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_0
    :try_start_3
    const-string v6, "MMSBGSender"

    const-string v7, "It is  save  message only. Saved.. coming out"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private decodeImageHeaders(Landroid/net/Uri;)V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImgWidth:I

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImgHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v4, "MMSBGSender"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v4, "MMSBGSender"

    const-string v5, "IOException caught while opening stream"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v4, "MMSBGSender"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v2

    :try_start_4
    const-string v4, "MMSBGSender"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v4, "MMSBGSender"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_1
    :goto_1
    throw v4

    :catch_5
    move-exception v0

    const-string v5, "MMSBGSender"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 7

    const/4 v1, 0x0

    sget-object v3, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_1

    sget-object v3, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    array-length v3, v3

    new-array v1, v3, [Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_0

    sget-object v3, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    sget-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_1
    sget-object v3, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    sget-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSubject:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    sget-object v3, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_3

    const/16 v3, 0x81

    :try_start_0
    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    const/16 v3, 0x81

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v3, "MMSBGSender"

    const-string v4, "ReadReport, DeliveryReport Reset failed"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getOrCreateThreadId([Ljava/lang/String;)J
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v1

    return-wide v1
.end method

.method private getResizedImageData(Landroid/net/Uri;II)[B
    .locals 12

    const/4 v9, 0x0

    iget v7, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImgWidth:I

    iget v6, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImgHeight:I

    const/4 v8, 0x1

    :goto_0
    div-int v10, v7, v8

    if-gt v10, p2, :cond_0

    div-int v10, v6, v8

    if-le v10, p3, :cond_1

    :cond_0
    mul-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v10, 0x0

    invoke-static {v2, v10, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    return-object v9

    :catch_0
    move-exception v1

    const-string v10, "MMSBGSender"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :try_start_2
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x50

    invoke-virtual {v0, v10, v11, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v9

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v10, "MMSBGSender"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_4
    const-string v10, "MMSBGSender"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    const-string v10, "MMSBGSender"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_4
    move-exception v3

    :try_start_6
    const-string v10, "MMSBGSender"

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    :catch_5
    move-exception v1

    const-string v10, "MMSBGSender"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v9

    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_4
    :goto_2
    throw v9

    :catch_6
    move-exception v1

    const-string v10, "MMSBGSender"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private getResizedImageUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->decodeImageHeaders(Landroid/net/Uri;)V

    const/16 v4, 0x280

    const/16 v5, 0x1e0

    invoke-direct {p0, p1, v4, v5}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->getResizedImageData(Landroid/net/Uri;II)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->GetTempFileName(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempResizefile:Ljava/lang/String;

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempResizefile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    const-string v4, "MMSBGSender"

    const-string v5, "MMS Temp Resize File Write success"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v4, "MMSBGSender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException while closing: MMS Temp Resize File"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v4, "MMSBGSender"

    const-string v5, "Failed to open MMS Temp Resize File."

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v4, Lcom/google/android/mms/MmsException;

    invoke-direct {v4, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    throw v4

    :catch_2
    move-exception v0

    :try_start_4
    const-string v4, "MMSBGSender"

    const-string v5, "Failed to write data to MMS Temp Resize File."

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v4, Lcom/google/android/mms/MmsException;

    invoke-direct {v4, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_3
    move-exception v0

    const-string v5, "MMSBGSender"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException while closing: MMS Temp Resize File"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVideosize(Landroid/net/Uri;)I
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_size"

    aput-object v0, v2, v7

    iget-object v0, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :cond_0
    return v7
.end method


# virtual methods
.method public GetTempFileName(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    const-string v2, "parts"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "/TempImage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    if-nez p1, :cond_1

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public SendMMS()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Lcom/android/mms/UnsupportContentTypeException;,
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToastHandler:Landroid/os/Handler;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v10, "MMSBGSender"

    const-string v11, "MMSRequestHandler SendMMS method invoked"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v10

    if-nez v10, :cond_0

    new-instance v8, Lcom/android/mms/model/SlideModel;

    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v8, v10}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10, v8}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    :cond_0
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    new-instance v9, Lcom/android/mms/model/TextModel;

    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    const-string v11, "text/plain"

    const-string v12, "text_0.txt"

    iget-object v13, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v13}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mMsgText:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mMsgText:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    :goto_0
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImageUri:Landroid/net/Uri;

    if-eqz v10, :cond_b

    :try_start_0
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImageUri:Landroid/net/Uri;

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->AddImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    :goto_1
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAudioUri:Landroid/net/Uri;

    if-eqz v10, :cond_d

    :try_start_1
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAudioUri:Landroid/net/Uri;

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->AddAudio(Landroid/net/Uri;)V
    :try_end_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f

    :cond_2
    :goto_2
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mVideoUri:Landroid/net/Uri;

    if-eqz v10, :cond_e

    :try_start_2
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mVideoUri:Landroid/net/Uri;

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->AddVideo(Landroid/net/Uri;)V
    :try_end_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_14

    :cond_3
    :goto_3
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    new-instance v7, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v7}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    invoke-direct {p0, v7}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    const-string v10, "MMSBGSender"

    const-string v11, "Encoded content obtained"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    if-gtz v10, :cond_4

    invoke-direct {p0, v1, v6, v7}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->PostSendRequest(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/PduBody;Lcom/google/android/mms/pdu/SendReq;)V

    :cond_4
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    new-instance v0, Ljava/io/File;

    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v10, "MMSBGSender"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Deleted Temp file:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    :cond_6
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempResizefile:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    new-instance v0, Ljava/io/File;

    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempResizefile:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v10, "MMSBGSender"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Deleted Temp file:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempResizefile:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempResizefile:Ljava/lang/String;

    :cond_8
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    if-lez v10, :cond_9

    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToastHandler:Landroid/os/Handler;

    iget v11, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void

    :cond_a
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v3

    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    :catch_1
    move-exception v4

    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    :catch_2
    move-exception v5

    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    :catch_3
    move-exception v2

    const-string v10, "MMSBGSender"

    const-string v11, "MMSBGSender - Exception:"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_b
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImageFileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    :try_start_3
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImageFileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->AddImage(Landroid/net/Uri;)V
    :try_end_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_1

    :catch_4
    move-exception v3

    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    :catch_5
    move-exception v4

    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    :catch_6
    move-exception v5

    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    :catch_7
    move-exception v2

    const-string v10, "MMSBGSender"

    const-string v11, "MMSBGSender - Exception:"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_c
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_1

    :try_start_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->UpdateBGImageContent()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->AddImage(Landroid/net/Uri;)V
    :try_end_4
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    goto/16 :goto_1

    :catch_8
    move-exception v3

    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    :catch_9
    move-exception v4

    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    :catch_a
    move-exception v5

    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    :catch_b
    move-exception v2

    const-string v10, "MMSBGSender"

    const-string v11, "MMSBGSender - Exception:"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_c
    move-exception v3

    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_2

    :catch_d
    move-exception v4

    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_2

    :catch_e
    move-exception v5

    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_2

    :catch_f
    move-exception v2

    const-string v10, "MMSBGSender"

    const-string v11, "MMSBGSender - Exception:"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_d
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAudioFileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    :try_start_5
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAudioFileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->AddAudio(Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10

    goto/16 :goto_2

    :catch_10
    move-exception v2

    const-string v10, "MMSBGSender"

    const-string v11, "MMSBGSender - Exception:"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_11
    move-exception v3

    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_3

    :catch_12
    move-exception v4

    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_3

    :catch_13
    move-exception v5

    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_3

    :catch_14
    move-exception v2

    const-string v10, "MMSBGSender"

    const-string v11, "MMSBGSender - Exception:"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_e
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mVideoFileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    :try_start_6
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mVideoFileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->AddVideo(Landroid/net/Uri;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_15

    goto/16 :goto_3

    :catch_15
    move-exception v2

    const-string v10, "MMSBGSender"

    const-string v11, "MMSBGSender - Exception:"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method

.method public UpdateBGImageContent()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->GetTempFileName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create new Temp File: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    const-string v6, "MMSBGSender"

    const-string v7, "createNewFile"

    invoke-static {v6, v7, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create new  Temp File: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v6, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v6, "MMSBGSender"

    const-string v7, "MMS Wave File Write success"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_1
    move-exception v2

    const-string v6, "MMSBGSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException while closing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v2

    :try_start_3
    const-string v6, "MMSBGSender"

    const-string v7, "Failed to open Input/Output stream."

    invoke-static {v6, v7, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v6, Lcom/google/android/mms/MmsException;

    invoke-direct {v6, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v6

    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_1
    throw v6

    :catch_3
    move-exception v2

    :try_start_5
    const-string v6, "MMSBGSender"

    const-string v7, "Failed to read/write data."

    invoke-static {v6, v7, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v6, Lcom/google/android/mms/MmsException;

    invoke-direct {v6, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_4
    move-exception v2

    const-string v7, "MMSBGSender"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException while closing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public checkMessageSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(IILandroid/content/ContentResolver;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    aget-object v1, p1, v6

    const-string v4, ""

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mMsgText:Ljava/lang/String;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAudioFileName:Ljava/lang/String;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mVideoFileName:Ljava/lang/String;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImageFileName:Ljava/lang/String;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAppName:Ljava/lang/String;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mMsgID:Ljava/lang/String;

    const-string v4, ""

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSubject:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempResizefile:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    sput-object v7, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    sput-object v7, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mVideoUri:Landroid/net/Uri;

    sput-object v7, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAudioUri:Landroid/net/Uri;

    sput-object v7, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImageUri:Landroid/net/Uri;

    sput-object v7, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mBitmap:Landroid/graphics/Bitmap;

    sput-boolean v6, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mIsSaveAction:Z

    iput v6, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImgWidth:I

    iput v6, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImgHeight:I

    const-string v4, "MMSBGSender"

    const-string v5, "MMSRequestHandler doInBackground method invoked"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.mms.QUICKSND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, ""

    const-string v4, "mms_to"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    sget-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->Convert([Ljava/lang/String;)V

    :cond_0
    const-string v4, "mms_subject"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSubject:Ljava/lang/String;

    const-string v4, "mms_appname"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAppName:Ljava/lang/String;

    const-string v4, "mms_msgid"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mMsgID:Ljava/lang/String;

    const-string v4, "mms_text"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mMsgText:Ljava/lang/String;

    const-string v4, "mms_image"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImageFileName:Ljava/lang/String;

    const-string v4, "mms_audio"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAudioFileName:Ljava/lang/String;

    const-string v4, "mms_video"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mVideoFileName:Ljava/lang/String;

    const-string v4, "mms_image_uri"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImageUri:Landroid/net/Uri;

    const-string v4, "mms_audio_uri"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAudioUri:Landroid/net/Uri;

    const-string v4, "mms_video_uri"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mVideoUri:Landroid/net/Uri;

    const-string v4, "mms_save"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mIsSaveAction:Z

    const-string v4, "mms_image_bitmap"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mBitmap:Landroid/graphics/Bitmap;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->SendMMS()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v7

    :catch_0
    move-exception v0

    const-string v4, "MMSBGSender"

    const-string v5, "Exception caught"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
