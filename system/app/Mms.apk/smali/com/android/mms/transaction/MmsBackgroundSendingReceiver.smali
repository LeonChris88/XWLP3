.class public Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsBackgroundSendingReceiver.java"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMediaUri:Landroid/net/Uri;

.field private mMessageUri:Landroid/net/Uri;

.field private mPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private mRecipients:[Ljava/lang/String;

.field private mResizable:Z

.field private mResizedata:[B

.field private mSendReq:Lcom/google/android/mms/pdu/SendReq;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mResizable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;Lcom/google/android/mms/pdu/PduPersister;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->initMmsComponents()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->sendMessage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->sendMmsWorker(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method

.method private createNewSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    new-instance v2, Lcom/android/mms/model/SlideModel;

    invoke-direct {v2, v3}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    iget-object v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContentType:Ljava/lang/String;

    const-string v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Lcom/android/mms/model/ImageModel;

    iget-object v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContentType:Ljava/lang/String;

    const-string v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Lcom/android/mms/model/VideoModel;

    iget-object v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContentType:Ljava/lang/String;

    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Lcom/android/mms/model/AudioModel;

    iget-object v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mMediaUri:Landroid/net/Uri;

    invoke-direct {v1, v4, v5}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v1

    check-cast v4, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->resizeMedia(Lcom/android/mms/model/ImageModel;I)V

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mResizable:Z

    goto :goto_1
.end method

.method private static encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 5

    array-length v0, p0

    if-lez v0, :cond_0

    new-array v1, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mRecipients:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_0
    return-void
.end method

.method private static getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J
    .locals 7

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v5

    return-wide v5
.end method

.method private initMmsComponents()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->createNewSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->makeSendReq()Lcom/google/android/mms/pdu/SendReq;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mSendReq:Lcom/google/android/mms/pdu/SendReq;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_0
.end method

.method private makeSendReq()Lcom/google/android/mms/pdu/SendReq;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    new-instance v5, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v5}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    invoke-direct {p0, v5}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    iget-object v6, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mResizable:Z

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v4, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    const-string v6, "image/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mResizedata:[B

    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v4}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    iget-object v6, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    sget-object v7, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mMessageUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v4}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    return-object v5
.end method

.method private resizeMedia(Lcom/android/mms/model/ImageModel;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v2, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mMediaUri:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    if-nez v0, :cond_0

    new-instance v2, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No room to resize picture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3, p2}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "part is null during resize media."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mResizedata:[B

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p1, v2}, Lcom/android/mms/model/ImageModel;->setResizeImageSize(I)V

    return-void
.end method

.method private sendMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mMessageUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$2;-><init>(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendMmsWorker(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v2, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mRecipients:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Mms/MmsBackgroundSendingReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "recipients"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mRecipients:[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContentType:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mMediaUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$1;-><init>(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;)V

    invoke-virtual {v0}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$1;->start()V

    return-void
.end method
