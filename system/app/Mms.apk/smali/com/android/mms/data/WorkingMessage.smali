.class public Lcom/android/mms/data/WorkingMessage;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

.field private static final MMS_DRAFT_PROJECTION:[Ljava/lang/String;

.field private static final MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

.field private static final SMS_BODY_PROJECTION:[Ljava/lang/String;

.field public static mForceMmsState:Z

.field private static sMmsEnabled:Z


# instance fields
.field private mAttachmentType:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDiscarded:Z

.field private mHandler:Landroid/os/Handler;

.field private mMaxEmailLen:I

.field private mMessageUri:Landroid/net/Uri;

.field private mMmsState:I

.field public mNewSlide:I

.field private mRecipients:Ljava/lang/String;

.field private mSignatureAdded:I

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private final mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

.field private mSubject:Ljava/lang/CharSequence;

.field private mText:[Ljava/lang/CharSequence;

.field private mWorkingRecipients:Lcom/android/mms/data/ContactList;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "m_size"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_size"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "sub"

    aput-object v1, v0, v3

    const-string v1, "sub_cs"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->SMS_BODY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mSignatureAdded:I

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const-string v1, ""

    aput-object v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/data/WorkingMessage;->sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/data/WorkingMessage;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/data/WorkingMessage;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmailAndSegmentedSms()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Mms/WorkingMessage"

    const-string v6, "IS41 Email : addressContainsEmailToMms"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v2, v4, v3

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object v2, v4, v3

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    :goto_1
    if-ne v2, v0, :cond_2

    const/4 v2, 0x0

    aget v2, v2, v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v6

    if-lt v2, v6, :cond_2

    invoke-direct {p0, v0, v0, v0}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    :goto_2
    return v0

    :cond_0
    aget-object v2, v4, v3

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v4, v3

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v6, v4, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v2

    aget v2, v2, v1

    if-le v2, v0, :cond_2

    invoke-direct {p0, v0, v0, v0}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v2, v0

    goto :goto_1
.end method

.method private appendMedia(IILandroid/net/Uri;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "Mms/WorkingMessage"

    const-string v3, "appendMedia(),location="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ",type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ",uri="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ",checkCRMode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    new-instance v1, Lcom/android/mms/model/ImageModel;

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v4

    invoke-direct {v1, v0, p3, v4}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    if-eqz p4, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    :goto_1
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    move-object v0, v2

    :goto_2
    if-eq p2, v7, :cond_a

    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    :goto_3
    if-eq p2, v5, :cond_1

    if-ne p2, v6, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    goto :goto_0

    :cond_3
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    goto :goto_1

    :cond_4
    if-ne p2, v5, :cond_6

    new-instance v1, Lcom/android/mms/model/VideoModel;

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v4

    invoke-direct {v1, v0, p3, v4}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    if-eqz p4, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    move-object v0, v2

    goto :goto_2

    :cond_5
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/VideoModel;

    invoke-virtual {v0}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V

    move-object v0, v2

    goto :goto_2

    :cond_6
    if-ne p2, v6, :cond_8

    new-instance v1, Lcom/android/mms/model/AudioModel;

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, p3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    if-eqz p4, :cond_7

    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/AudioModel;

    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    move-object v0, v2

    goto :goto_2

    :cond_7
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/AudioModel;

    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    move-object v0, v2

    goto :goto_2

    :cond_8
    if-ne p2, v7, :cond_9

    new-instance v0, Lcom/android/mms/model/AttachmentModel;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p4}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    move-object v1, v2

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMedia type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->addAttachment(Lcom/android/mms/model/AttachmentModel;)V

    goto/16 :goto_3
.end method

.method private asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncDelete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage$5;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private asyncDeleteDraftMmsMessage(J)V
    .locals 3

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncDeleteDraftMmsMessage(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 4

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "asyncDeleteDraftSmsMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "type=3"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private asyncSendMms(Lcom/android/mms/data/Conversation;)V
    .locals 8

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v6

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$2;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/data/WorkingMessage$2;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;)V

    const-string v1, "send_mms"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private asyncSendSms(Lcom/android/mms/data/Conversation;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSubjectSMS()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<subject:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/android/mms/ui/GreekInputHandler;->isSIPGreek()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/GreekInputHandler;->MappingGreekCharater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/data/WorkingMessage$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/mms/data/WorkingMessage$1;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    const-string v0, "send_sms"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 4

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncUpdateDraftMmsMessage conv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMessageUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mSignatureAdded:I

    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/data/WorkingMessage$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/mms/data/WorkingMessage$3;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncUpdateDraftSmsMessage(),conv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveEmptyRecipient()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/data/WorkingMessage$4;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private changeMedia(IILandroid/net/Uri;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eqz p3, :cond_0

    const-string v2, "Mms/WorkingMessage"

    const-string v3, "appendMedia(),location="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ",uri="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ",checkCRMode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    const-string v0, "Mms"

    const-string v1, "[WorkingMessage] changeMedia: no slides!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    if-nez p2, :cond_4

    if-nez p3, :cond_2

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    goto :goto_0

    :cond_4
    if-ne p2, v7, :cond_c

    new-instance v0, Lcom/android/mms/model/ImageModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v4

    invoke-direct {v0, v2, p3, v4}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    if-eqz p4, :cond_5

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    :cond_5
    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    move-object v2, v0

    move-object v0, v1

    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v1

    :cond_6
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    :cond_7
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v1

    :cond_8
    if-eq p2, v6, :cond_9

    if-ne p2, v5, :cond_12

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    :cond_9
    :goto_2
    if-eq p2, v6, :cond_14

    :try_start_0
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/RotationRestrictionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_3
    if-eq p2, v8, :cond_a

    if-ne p2, v5, :cond_b

    :cond_a
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    :cond_b
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    goto :goto_0

    :cond_c
    if-ne p2, v8, :cond_e

    new-instance v0, Lcom/android/mms/model/VideoModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v4

    invoke-direct {v0, v2, p3, v4}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    if-eqz p4, :cond_d

    invoke-virtual {v0}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    :cond_d
    invoke-virtual {v0}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :cond_e
    if-ne p2, v5, :cond_10

    new-instance v0, Lcom/android/mms/model/AudioModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    if-eqz p4, :cond_f

    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    :cond_f
    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :cond_10
    if-ne p2, v6, :cond_11

    new-instance v0, Lcom/android/mms/model/AttachmentModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p3, p4}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    move-object v2, v1

    goto :goto_1

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMedia type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    if-ne p2, v7, :cond_13

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    goto :goto_2

    :cond_13
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    const-string v1, "UnsupportContentTypeException"

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    new-instance v0, Lcom/android/mms/ExceedMessageSizeException;

    const-string v1, "ExceedMessageSizeException"

    invoke-direct {v0, v1}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    new-instance v0, Lcom/android/mms/ResolutionException;

    const-string v1, "ResolutionException"

    invoke-direct {v0, v1}, Lcom/android/mms/ResolutionException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    new-instance v0, Lcom/android/mms/RotationRestrictionException;

    const-string v1, "RotationRestrictionException"

    invoke-direct {v0, v1}, Lcom/android/mms/RotationRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "ContentRestrictionException"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->addAttachment(Lcom/android/mms/model/AttachmentModel;)V

    goto/16 :goto_3
.end method

.method private static createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    .locals 3

    const/4 v1, 0x0

    const-string v0, "Mms/WorkingMessage"

    const-string v2, "createDraftMmsMessage()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    sget-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v2}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "Mms/WorkingMessage"

    const-string v2, "createDraftMmsMessage : null pointer exception"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static createEmpty(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;
    .locals 3

    const-string v1, "Mms/WorkingMessage"

    const-string v2, "createEmpty()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;)V

    return-object v0
.end method

.method private deleteDraftSmsMessage(J)V
    .locals 5

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDraftSmsMessage(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type=3"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V
    .locals 6

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMmsMessage(),uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/data/WorkingMessage$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$6;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    if-eqz p5, :cond_0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private ensureSlideshow()V
    .locals 3

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    new-instance v0, Lcom/android/mms/model/SlideModel;

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0
.end method

.method public static load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;
    .locals 6

    new-instance v1, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load: moving to drafts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :cond_0
    invoke-direct {v1, p2}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t move to drafts:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;
    .locals 6

    new-instance v1, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load with CRMode : moving to drafts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :cond_0
    invoke-direct {v1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t move to drafts:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadDraft(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;
    .locals 2

    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-direct {v0, p2}, Lcom/android/mms/data/WorkingMessage;->loadFromConversation(Lcom/android/mms/data/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    goto :goto_0
.end method

.method private loadFromConversation(Lcom/android/mms/data/Conversation;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "Mms/WorkingMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadFromConversation(),conv="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-gtz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v6, v6, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v6, v1, v2, v0}, Lcom/android/mms/data/WorkingMessage;->readDraftMmsMessage(Landroid/content/Context;JLjava/lang/StringBuilder;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v6

    if-eqz v6, :cond_3

    iput v4, p0, Lcom/android/mms/data/WorkingMessage;->mSignatureAdded:I

    :cond_3
    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, v3}, Lcom/android/mms/data/WorkingMessage;->loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    :cond_4
    move v4, v5

    goto :goto_0
.end method

.method private loadFromUri(Landroid/net/Uri;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFromUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    invoke-virtual {p0, v2}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v3, "Couldn\'t load URI %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0
.end method

.method private loadFromUri(Landroid/net/Uri;Z)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromUri with CRMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v6

    if-le v5, v6, :cond_0

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    new-instance v1, Lcom/android/mms/model/SlideModel;

    invoke-direct {v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const v7, 0x7f090045

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    invoke-virtual {p0, v4}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string v5, "Couldn\'t load URI %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v5, v3}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    goto :goto_0
.end method

.method private static makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    .locals 7

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    invoke-static {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    return-object v2
.end method

.method private preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v6, v4, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    invoke-direct {p0, p2, v2, v0, v1}, Lcom/android/mms/data/WorkingMessage;->sendSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    return-void

    :cond_0
    const-string v3, "Mms/WorkingMessage"

    const-string v4, "preSendSmsWorker Handler is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareForSave(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZ)V

    return-void
.end method

.method private prepareForSave(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeSubjectIfEmpty(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeAttachmentIfEmpty(Z)V

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeLengthMMSIfNotOver(Z)V

    :cond_1
    return-void
.end method

.method private static readDraftMmsMessage(Landroid/content/Context;JLjava/lang/StringBuilder;)Landroid/net/Uri;
    .locals 7

    const/4 v5, 0x0

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "readDraftMmsMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v0, 0x1

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v5

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    const-string v2, "Mms/WorkingMessage"

    const-string v3, "readDraftSmsMessage()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v8, ""

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->SMS_BODY_PROJECTION:[Ljava/lang/String;

    const-string v4, "type=3"

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v9, v0

    move-object v0, v1

    move v1, v9

    :goto_2
    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    invoke-virtual {p1, v7}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Mms/WorkingMessage"

    const-string v2, "readDraftSmsMessage calling clearThreadId"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    move v0, v7

    move-object v1, v8

    goto :goto_1

    :cond_4
    move v1, v7

    move-object v0, v8

    goto :goto_2
.end method

.method private removeAttachmentIfEmpty(Z)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    return-void
.end method

.method private removeLengthMMSIfNotOver(Z)V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    return-void
.end method

.method private removeSubjectIfEmpty(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 9

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    mul-int/2addr v0, v2

    int-to-long v4, v0

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_0

    :cond_0
    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMaxPendingMessagesReached()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v3

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMmsWorker: update draft MMS message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_8

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x21

    if-lt v7, v8, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7e

    if-le v7, v8, :cond_6

    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5f

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_4
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :cond_8
    invoke-virtual {v0, v2}, Lcom/android/mms/model/MediaModel;->setSrc(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p4}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {p4}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_c

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x21

    if-lt v6, v7, :cond_a

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7e

    if-le v6, v7, :cond_b

    :cond_a
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5f

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {v0, v2}, Lcom/android/mms/model/AttachmentModel;->setSrc(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    if-nez p2, :cond_f

    invoke-static {p3, p5, p4}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object p2

    :goto_7
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v1, v2, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_8
    invoke-direct {p0, v3, v4}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    new-instance v0, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v2

    int-to-long v5, v2

    invoke-direct {v0, v1, p2, v5, v6}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    :try_start_2
    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v1, p2, v2, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_e
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_9
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    goto/16 :goto_1

    :cond_f
    invoke-static {p2, p3, p4, p5}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto :goto_7

    :cond_10
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "sendMmsWorker Handler is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_0
    move-exception v0

    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send message: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", threadId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_4
.end method

.method private sendSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    const-string v0, ";"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "sendSmsWorker()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    :try_start_0
    invoke-interface {v0, p3, p4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setText(ILjava/lang/CharSequence;)V
    .locals 5

    const/4 v2, 0x0

    const-string v1, "Mms/WorkingMessage"

    const-string v3, "setText()"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSubjectSMS()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZZ)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aput-object p2, v1, p1

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private static stateString(I)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v1, "<none>"

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_1

    const-string v1, "RECIPIENTS_REQUIRE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    const-string v1, "HAS_SUBJECT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_3

    const-string v1, "HAS_ATTACHMENT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_4

    const-string v1, "LENGTH_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_5

    const-string v1, "FORCE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private syncTextFromSlideshow()V
    .locals 7

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    sget v5, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-le v4, v5, :cond_1

    sget v1, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    move v2, v1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v1, v4

    move v2, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method private syncTextToSlideshow()V
    .locals 9

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v1

    new-instance v4, Lcom/android/mms/model/TextModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v6, "text/plain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid:text_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private static updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 4

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraftMmsMessage uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "updateDraftMmsMessage null uri"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p3, :cond_1

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "updateDraftMmsMessage null sendReq"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "updateDraftMmsMessage slideshow null "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0, p3}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1, p0, v0}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDraftMmsMessage: cannot update message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateDraftSmsMessage(JLjava/lang/String;)V
    .locals 4

    const/4 v3, 0x3

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraftSmsMessage tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "thread_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v0}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(J)V

    goto :goto_0
.end method

.method private updateState(IZZ)V
    .locals 7

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz p2, :cond_6

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    :goto_1
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-ne v0, v4, :cond_2

    and-int/lit8 v0, v6, -0x11

    if-lez v0, :cond_2

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    :cond_2
    if-ne p1, v4, :cond_3

    if-eqz p2, :cond_3

    sput-boolean v3, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    :cond_3
    if-eqz p3, :cond_4

    if-nez v6, :cond_7

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0, v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    :cond_5
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eq v6, v0, :cond_0

    const-string v1, "Mms/WorkingMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_8

    const-string v0, "+"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_4

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0, v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    goto :goto_2

    :cond_8
    const-string v0, "-"

    goto :goto_3
.end method


# virtual methods
.method public addSlide(I)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSlide(),slideIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v3

    new-instance v4, Lcom/android/mms/model/TextModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v6, "text/plain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid:text_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ".txt"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v3, v0

    invoke-virtual {v4, v0, v1}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    :cond_1
    invoke-virtual {v2, v4}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    :cond_2
    new-instance v0, Lcom/android/mms/model/SlideModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, v2}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v2

    new-instance v3, Lcom/android/mms/model/TextModel;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v5, "text/plain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid:text_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".txt"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v6

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-ge v2, p1, :cond_3

    const-string v2, "Mms/WorkingMessage"

    const-string v3, "inside mSlideshow.size()<slideIndex"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    move v0, v1

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, p1, v0}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    goto :goto_1
.end method

.method public addWorkingRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 8

    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    new-instance v6, Lcom/android/mms/data/ContactList;

    invoke-direct {v6}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/ContactList;

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    if-nez v4, :cond_5

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->clear()V

    return-void
.end method

.method public checkMaxSlide(II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    sget v1, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public correctAttachmentState(Z)V
    .locals 11

    const/4 v3, 0x5

    const/4 v10, 0x4

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v9

    if-nez v9, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mSignatureAdded:I

    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_3

    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v7

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, v6, v1, v7}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    invoke-direct {p0, v10, v0, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    return-void

    :cond_3
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_0

    :cond_4
    if-le v9, v1, :cond_5

    iput v10, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_6

    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    :cond_6
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    :cond_7
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubjectField()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_9

    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->recipienHasEmail()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto/16 :goto_0

    :cond_a
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_b
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto/16 :goto_0

    :cond_c
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto/16 :goto_0

    :cond_d
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method protected createPendingSmsMessage(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    const-string v0, ";"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v0, "createPendingSmsMessage"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    :try_start_0
    invoke-interface {v0, p3, p4}, Lcom/android/mms/transaction/MessageSender;->queueMessageForPending(J)Z

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save SMS message to pending, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public declared-synchronized discard()V
    .locals 6

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "discard()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mSignatureAdded:I

    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-ne v0, v2, :cond_1

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "already discarded"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const-string v2, "msg_box=3"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public expectedMessageSize()Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubjectField()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, 0x7d

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v2

    :cond_2
    :goto_2
    const/16 v3, 0x36

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    move v2, v1

    :goto_3
    if-ge v2, v5, :cond_7

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x28

    add-int/2addr v0, v7

    :cond_3
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x28

    add-int/2addr v0, v7

    :cond_4
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x1c

    add-int/2addr v0, v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRawAttachmentsNameList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    move v2, v1

    :goto_5
    if-ge v2, v5, :cond_8

    add-int/lit16 v3, v0, 0x11a

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_5

    :cond_8
    if-nez v0, :cond_9

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_6
    const-string v0, "KB"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    add-int/lit16 v0, v0, 0x3ff

    div-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_b
    move v0, v2

    goto/16 :goto_2

    :cond_c
    move v0, v1

    goto/16 :goto_0
.end method

.method public getMaxEmailLen()I
    .locals 2

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "IS41 Email : getMaxEmailLen"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    return v0
.end method

.method public getMessageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRawAttachmentsNameList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSignature()I
    .locals 1

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mSignatureAdded:I

    return v0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public getSubject()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1

    if-ltz p1, :cond_0

    sget v0, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getWorkingRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttachment()Z
    .locals 1

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnlySignatureText()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_key_signature_text"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_key_enable_signature"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasSlideshow()Z
    .locals 2

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubject()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubjectField()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAddPossible(ILcom/android/mms/model/SlideModel;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public isDiscarded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    return v0
.end method

.method public isFakeMmsForDraft()Z
    .locals 1

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLengthRequiresMMS()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    if-eqz v5, :cond_1

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isContainKoreanChar(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    if-ne v0, v3, :cond_2

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-static {v5, v4, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    aget v5, v2, v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v6

    if-lt v5, v6, :cond_4

    :goto_1
    return v3

    :cond_2
    if-nez v0, :cond_3

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-static {v5, v4, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-static {v5, v4}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v2

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method public isWorthSaving()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    const-string v1, "Mms/WorkingMessage"

    const-string v2, "loadRecipients()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/android/mms/ui/MessageUtils;->getRecipientsFromPDU(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->setRecipients(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public readStateFromBundle(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "subject"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    const-string v3, "msg_uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    goto :goto_0

    :cond_1
    const-string v3, "sms_body"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    goto :goto_0
.end method

.method public recipienHasEmail()Z
    .locals 1

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFakeMmsForDraft(Z)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v1, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public removeSlide(I)Z
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSlide(),slideIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    invoke-virtual {p0, v3}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    return v3
.end method

.method public requiresMms()Z
    .locals 1

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAsMms(Z)Landroid/net/Uri;
    .locals 8

    const/4 v7, 0x0

    const-string v4, "Mms/WorkingMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAsMms(),notify="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,mConversation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v4, :cond_0

    const-string v4, "Mms/WorkingMessage"

    const-string v5, "saveAsMms() IllegalStateException : saveAsMms() called after discard()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    :cond_0
    const/16 v4, 0x10

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    invoke-direct {p0, v7, v7}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZ)V

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Lcom/android/mms/data/ContactList;

    invoke-direct {v3}, Lcom/android/mms/data/ContactList;-><init>()V

    invoke-static {}, Lcom/android/mms/data/Contact;->getTemp()Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v3}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    :goto_0
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, v2, v4}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    :goto_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v4, v0, v5, v2}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto :goto_1
.end method

.method public saveDraft(Z)Z
    .locals 7

    const/4 v4, 0x0

    const-string v5, "Mms/WorkingMessage"

    const-string v6, "saveDraft()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v5, :cond_0

    const-string v5, "Mms/WorkingMessage"

    const-string v6, "saveDraft(),mDiscarded=true"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v5, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "saveDraft() called with no conversation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-eqz p1, :cond_3

    invoke-direct {p0, v4}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v4}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    const/4 v1, 0x1

    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    move v4, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v4, v4}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZ)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSubjectSMS()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<subject : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v6, v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v4, v2}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v4, v0}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v4, v0}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_2
.end method

.method public saveSmsToPending()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "saveSmsToPending"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<subject:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/data/WorkingMessage$7;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/mms/data/WorkingMessage$7;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_0
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public send()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "send()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncSendMms(Lcom/android/mms/data/Conversation;)V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    :cond_1
    iput-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "send()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncSendSms(Lcom/android/mms/data/Conversation;)V

    goto :goto_0
.end method

.method public setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I
    .locals 18

    if-eqz p4, :cond_0

    const-string v5, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAttachment:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v14, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v5, :cond_1

    const/4 v5, -0x1

    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x1

    move/from16 v0, p3

    if-ne v0, v5, :cond_2

    const/4 v5, 0x1

    move/from16 v0, p3

    if-ne v0, v5, :cond_6

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_2
    const-wide/16 v15, -0x1

    const/4 v13, 0x0

    if-eqz p4, :cond_3

    if-eqz p1, :cond_3

    :try_start_0
    sget-object v7, Lcom/android/mms/data/WorkingMessage;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    :cond_3
    if-eqz v13, :cond_5

    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const-string v5, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v0, v15

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v5, v15

    if-gez v5, :cond_6

    const/4 v14, -0x2

    move v5, v14

    goto :goto_0

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 v5, -0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_6
    const/4 v12, 0x0

    if-eqz p5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/mms/data/WorkingMessage;->isAddPossible(ILcom/android/mms/model/SlideModel;)Z

    move-result v5

    if-nez v5, :cond_7

    add-int/lit8 p2, p2, 0x1

    new-instance v17, Lcom/android/mms/model/SlideModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    const/4 v12, 0x1

    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->checkMaxSlide(II)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    const/4 v12, 0x0

    :cond_8
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    const/4 v5, -0x6

    goto/16 :goto_0

    :cond_9
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    if-eqz p5, :cond_d

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/data/WorkingMessage;->appendMedia(IILandroid/net/Uri;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/mms/RotationRestrictionException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_6

    :goto_1
    if-eqz v14, :cond_a

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    const/4 v12, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    :cond_a
    :goto_2
    if-nez v14, :cond_c

    const/4 v5, 0x5

    move/from16 v0, p3

    if-eq v0, v5, :cond_b

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    :cond_b
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    if-nez p7, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    move/from16 v0, p3

    invoke-interface {v5, v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged(I)V

    :cond_c
    move v5, v14

    goto/16 :goto_0

    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/data/WorkingMessage;->changeMedia(IILandroid/net/Uri;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/android/mms/ResolutionException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/android/mms/RotationRestrictionException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_1

    :catch_1
    move-exception v11

    const/4 v14, -0x1

    if-eqz v14, :cond_a

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    const/4 v12, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto :goto_2

    :catch_2
    move-exception v11

    const/4 v14, -0x3

    if-eqz v14, :cond_a

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    const/4 v12, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto :goto_2

    :catch_3
    move-exception v11

    const/4 v14, -0x2

    if-eqz v14, :cond_a

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    const/4 v12, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto :goto_2

    :catch_4
    move-exception v11

    const/4 v14, -0x4

    if-eqz v14, :cond_a

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    const/4 v12, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_2

    :catch_5
    move-exception v11

    const/4 v14, -0x8

    if-eqz v14, :cond_a

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    const/4 v12, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_2

    :catch_6
    move-exception v11

    const/4 v14, -0x5

    if-eqz v14, :cond_a

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    const/4 v12, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_2

    :catchall_1
    move-exception v5

    if-eqz v14, :cond_e

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    const/4 v12, 0x0

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    :cond_e
    throw v5
.end method

.method public setConversation(Lcom/android/mms/data/Conversation;Z)V
    .locals 6

    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setConversation(),before="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",after="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v3

    invoke-virtual {p0, v3, p2}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmailAndSegmentedSms()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Mms/WorkingMessage"

    const-string v4, "IS41 Email and Segmented SMS : setConversation"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->setMaxEmailLen(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setHasEmail(ZZ)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public setLengthRequiresMms(Z)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    goto :goto_0
.end method

.method public setMaxEmailLen(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "Mms/WorkingMessage"

    const-string v4, "IS41 Email : setMaxEmailLen"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    if-le v3, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setRecipients(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    return-void
.end method

.method public setSignature(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/data/WorkingMessage;->mSignatureAdded:I

    return-void
.end method

.method public setSubject(Ljava/lang/CharSequence;Z)V
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v3, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSubject(),s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",notify="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSubjectSMS()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v6

    if-eqz p1, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {p0, v8, v6, v3, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZZ)V

    :cond_0
    :goto_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    new-instance v2, Lcom/android/mms/model/TextModel;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v6, "text/plain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid:text_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v8

    invoke-direct {v2, v3, v6, v7, v8}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v5

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    :cond_2
    return-void

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    move v3, v4

    :goto_2
    invoke-direct {p0, v8, v3, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_2
.end method

.method public setWorkingRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 2

    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "setWorkingRecipients"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public syncWorkingRecipients()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    :cond_0
    return-void
.end method

.method public unDiscard()V
    .locals 2

    const-string v0, "Mms/WorkingMessage"

    const-string v1, "unDiscard"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    return-void
.end method

.method public updateState(IZZZ)V
    .locals 7

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz p3, :cond_6

    if-eqz p2, :cond_6

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    :goto_1
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-ne v0, v4, :cond_2

    and-int/lit8 v0, v6, -0x11

    if-lez v0, :cond_2

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    :cond_2
    if-ne p1, v4, :cond_3

    if-eqz p3, :cond_3

    sput-boolean v3, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    :cond_3
    if-eqz p4, :cond_4

    if-nez v6, :cond_7

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0, v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    :cond_5
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eq v6, v0, :cond_0

    const-string v1, "Mms/WorkingMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_8

    const-string v0, "+"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_4

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0, v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    goto :goto_2

    :cond_8
    const-string v0, "-"

    goto :goto_3
.end method

.method public updateText(ILjava/lang/CharSequence;)I
    .locals 12

    const/4 v11, 0x1

    const-string v7, "Mms/WorkingMessage"

    const-string v8, "changeSlideText()"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v1

    new-instance v4, Lcom/android/mms/model/TextModel;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v8, "text/plain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cid:text_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v10

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p2, v11}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    :try_start_0
    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setText(ILjava/lang/CharSequence;)V

    return v2

    :cond_1
    const-string p2, ""

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, -0x2

    invoke-virtual {v4, v6, v11}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    move-object p2, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Lcom/android/mms/model/SlideModel;->replaceText(Ljava/lang/String;Lcom/android/mms/model/TextModel;)V
    :try_end_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v2, -0x2

    move-object p2, v6

    goto :goto_1
.end method

.method public writeStateToBundle(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "subject"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    const-string v0, "msg_uri"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sms_body"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
