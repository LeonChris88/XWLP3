.class public Lcom/android/mms/model/SlideshowModel;
.super Lcom/android/mms/model/Model;
.source "SlideshowModel.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;",
        "Lcom/android/mms/model/IModelChangedObserver;"
    }
.end annotation


# static fields
.field private static mCheckMessageSize:Z

.field private static mIsDrmContentsPresent:Z

.field private static mIsRawAttachmentsPresent:Z

.field private static mRawAttachmentAddSlide:Z

.field private static mRawAttachmentAddSlideforCompose:Z

.field private static simOper:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMessageSize:I

.field private mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

.field private final mLayout:Lcom/android/mms/model/LayoutModel;

.field private mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

.field public final mRawAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field public final mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mCheckMessageSize:Z

    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/SlideshowModel;->simOper:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    new-instance v0, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v0}, Lcom/android/mms/model/LayoutModel;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    iput-object p2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    iput-object p5, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    invoke-virtual {v2, p0}, Lcom/android/mms/model/SlideModel;->setParent(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getMediaSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static checkCRMode(ZZLcom/android/mms/model/MediaModel;)Z
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    check-cast p2, Lcom/android/mms/model/ImageModel;

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    :cond_0
    :goto_0
    return p1

    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    check-cast p2, Lcom/android/mms/model/AudioModel;

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    check-cast p2, Lcom/android/mms/model/VideoModel;

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v1

    const/4 p1, 0x1

    goto :goto_0

    :catch_3
    move-exception v1

    const/4 p1, 0x1

    goto :goto_0
.end method

.method private static checkContentId(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static checkContentLocation(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static checkContentType(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ".vcf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "text/x-vCard"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v0, ".vcs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "text/x-vCalendar"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_2
    const-string v0, ".vnt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "text/x-vNote"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_3
    const-string v0, ".vts"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "text/x-vtodo"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private checkDRMExtension(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v4, "dcf"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "dcf"

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    const-string p3, "application/vnd.oma.drm.content"

    :cond_2
    return-object p3
.end method

.method private checkMediaFileName(IILcom/android/mms/model/MediaModel;Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    add-int/lit8 v1, p1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    if-eq p1, v1, :cond_0

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x2e

    invoke-virtual {p5, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {p5, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p5

    :goto_2
    const-string v4, "Mms/slideshow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changed file name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-object p5
.end method

.method private static checkSlideMedia(Ljava/lang/String;)Z
    .locals 2

    const-string v1, ".vcf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".vcs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".vnt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".vts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    invoke-static/range {p0 .. p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->createRegionModel(Lorg/w3c/dom/smil/SMILRootLayoutElement;)Lcom/android/mms/model/RegionModel;

    move-result-object v23

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->makeRegionModelList(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/util/ArrayList;)I

    move-result v30

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    if-lez v30, :cond_0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v3

    move/from16 v0, v30

    if-le v0, v3, :cond_0

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setHeight(I)V

    :cond_0
    new-instance v6, Lcom/android/mms/model/LayoutModel;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V

    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v27

    new-instance v7, Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v4, v1}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v27

    if-ge v14, v0, :cond_8

    const/4 v11, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/smil/SMILParElement;

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v3

    const/high16 v31, 0x447a

    mul-float v3, v3, v31

    float-to-int v0, v3

    move/from16 v21, v0

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v8, v18

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_6

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    check-cast v28, Lorg/w3c/dom/smil/SMILMediaElement;

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v21

    invoke-static {v0, v1, v6, v4, v2}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v31, "text/x-vCard"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v31, "text/x-vCalendar"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v31, "text/x-vNote"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v31, "text/x-vtodo"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    :cond_3
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    if-ne v8, v3, :cond_5

    sget-boolean v3, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    if-eqz v3, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v3, v27, -0x1

    if-ne v14, v3, :cond_5

    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlideForCompose()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v10, 0x1

    const/4 v11, 0x1

    :cond_5
    move/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v10, v1}, Lcom/android/mms/model/SlideshowModel;->checkCRMode(ZZLcom/android/mms/model/MediaModel;)Z

    move-result v10

    if-nez v10, :cond_3

    check-cast v28, Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v13

    const-string v3, "Mms/slideshow"

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v3, v0, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v13

    const-string v3, "Mms/slideshow"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v3, v0, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    new-instance v25, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v3

    const/high16 v31, 0x447a

    mul-float v3, v3, v31

    float-to-int v3, v3

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    check-cast v20, Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    if-nez v11, :cond_7

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->trimToSize()V

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/android/mms/model/SlideshowModel;->createSlideshowModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;ILjava/util/ArrayList;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    return-object v3
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->createRegionModel(Lorg/w3c/dom/smil/SMILRootLayoutElement;)Lcom/android/mms/model/RegionModel;

    move-result-object v23

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->makeRegionModelList(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/util/ArrayList;)I

    new-instance v7, Lcom/android/mms/model/LayoutModel;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V

    invoke-interface {v6}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v27

    new-instance v8, Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, v27

    if-ge v13, v0, :cond_5

    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/smil/SMILParElement;

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v4

    const/high16 v5, 0x447a

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v21, v0

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    const/16 v16, 0x0

    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v9, v18

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_4

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/model/SlideshowModel;->getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v28

    if-nez v28, :cond_0

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    move/from16 v3, v21

    invoke-static {v0, v1, v7, v2, v3}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    :cond_1
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/x-vCard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/x-vCalendar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/x-vNote"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/x-vtodo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    :catch_0
    move-exception v12

    const-string v4, "Mms/slideshow"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    :try_start_1
    check-cast v28, Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v0, v28

    invoke-static {v0, v15}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_1
    move-exception v12

    const-string v4, "Mms/slideshow"

    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v12

    const-string v4, "Mms/slideshow"

    invoke-virtual {v12}, Lcom/android/mms/UnsupportContentTypeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    new-instance v25, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v4

    const/high16 v5, 0x447a

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    check-cast v20, Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->trimToSize()V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-static/range {v4 .. v10}, Lcom/android/mms/model/SlideshowModel;->createSlideshowModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;ILjava/util/ArrayList;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    return-object v4
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;
    .locals 1

    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0}, Lcom/android/mms/model/SlideshowModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static createRegionModel(Lorg/w3c/dom/smil/SMILRootLayoutElement;)Lcom/android/mms/model/RegionModel;
    .locals 6

    const/4 v2, 0x0

    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v4

    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v5

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v4

    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v5

    invoke-interface {p0, v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    invoke-interface {p0, v5}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    :cond_1
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const/4 v1, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    return-object v0
.end method

.method private static createSlideshowModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;ILjava/util/ArrayList;)Lcom/android/mms/model/SlideshowModel;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;)",
            "Lcom/android/mms/model/SlideshowModel;"
        }
    .end annotation

    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V

    sget-boolean v1, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlide()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v11

    new-instance v12, Lcom/android/mms/model/SlideModel;

    invoke-direct {v12, v0}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    new-instance v13, Lcom/android/mms/model/TextModel;

    const-string v1, "text/plain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:text_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v13, p0, v1, v2, v3}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v8

    const/4 v1, 0x1

    if-ne v8, v1, :cond_3

    const v1, 0x7f090167

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList()Ljava/lang/String;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v12, v13}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    const/4 v1, 0x1

    if-ne v11, v1, :cond_4

    if-nez p5, :cond_4

    add-int/lit8 v1, v11, -0x1

    invoke-virtual {v0, v1, v12}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    invoke-virtual {v0, v11}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    :goto_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlide(Z)V

    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    :cond_0
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlide()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlide(Z)V

    :cond_1
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    :cond_2
    invoke-virtual {v0, v0}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    return-object v0

    :cond_3
    const v1, 0x7f090168

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v11, v12}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    goto :goto_1
.end method

.method private static extractCID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "cid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cid:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static extractLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getAddAttachmentSlide()Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    if-eqz v1, :cond_0

    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    return v0
.end method

.method public static getAddAttachmentSlideForCompose()Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    if-eqz v1, :cond_0

    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    return v0
.end method

.method private static getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    const/16 v22, 0x0

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_0
    move/from16 v0, v26

    if-ge v9, v0, :cond_2

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/smil/SMILParElement;

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    const/4 v11, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v11, v0, :cond_1

    invoke-interface {v15, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-interface {v13}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int v22, v22, v16

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v17

    new-instance v3, Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v20

    new-instance v7, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v14, 0x0

    const-string v29, "application/smil"

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v29

    if-eqz v29, :cond_5

    new-instance v14, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([B)V

    :cond_5
    if-nez v14, :cond_6

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v29

    if-eqz v29, :cond_6

    new-instance v14, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([B)V

    :cond_6
    if-eqz v14, :cond_7

    move-object/from16 v0, v20

    invoke-static {v0, v7, v14}, Lcom/android/mms/model/SlideshowModel;->checkContentType(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_7
    invoke-static/range {v20 .. v20}, Lcom/android/mms/model/SlideshowModel;->checkContentLocation(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v20 .. v20}, Lcom/android/mms/model/SlideshowModel;->checkContentId(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_4
    move/from16 v0, v24

    if-ge v12, v0, :cond_b

    if-eqz v6, :cond_8

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_8

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->extractCID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static {v6}, Lcom/android/mms/model/SlideshowModel;->extractLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    invoke-static/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->checkSlideMedia(Ljava/lang/String;)Z

    move-result v10

    :cond_8
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_9
    if-eqz v5, :cond_8

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    invoke-static/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->checkSlideMedia(Ljava/lang/String;)Z

    move-result v10

    goto :goto_5

    :cond_a
    const/16 v29, 0x2e

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v29

    if-lez v29, :cond_8

    const/16 v29, 0x0

    const/16 v30, 0x2e

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v30

    move-object/from16 v0, v23

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    invoke-static/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->checkSlideMedia(Ljava/lang/String;)Z

    move-result v10

    goto :goto_5

    :cond_b
    if-nez v10, :cond_3

    const/16 v18, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v29

    if-nez v29, :cond_e

    :try_start_0
    new-instance v19, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v18, v19

    :cond_c
    :goto_6
    if-eqz v18, :cond_d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_d
    const/16 v29, 0x1

    sput-boolean v29, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    goto/16 :goto_3

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_6

    :cond_e
    new-instance v18, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v29

    if-eqz v29, :cond_c

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/mms/model/AttachmentModel;->setUri(Landroid/net/Uri;)V

    goto :goto_6

    :cond_f
    return-object v3
.end method

.method public static getCheckMessageSizeforSlide()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mCheckMessageSize:Z

    return v0
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    const/16 v3, 0x80

    if-eq v0, v3, :cond_0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_1

    :cond_0
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    return-object v3

    :cond_1
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v3
.end method

.method private static getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 6

    move-object v2, p0

    const/4 v4, 0x0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    instance-of v5, v2, Lorg/w3c/dom/smil/SMILMediaElement;

    if-eqz v5, :cond_1

    move-object v4, v2

    check-cast v4, Lorg/w3c/dom/smil/SMILMediaElement;

    :cond_0
    return-object v4

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/model/SlideshowModel;->getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :cond_0
    return-object v3
.end method

.method private makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;
    .locals 21

    new-instance v14, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v14}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    const/4 v11, 0x0

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/mms/model/SlideModel;

    if-eqz v16, :cond_b

    const/4 v4, 0x0

    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v2

    if-ge v4, v2, :cond_b

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v5

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isAllowedToForward()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v11, 0x1

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    new-instance v6, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v18, v5

    check-cast v18, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v20, "text/x-vCalendar"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v20, "text/x-vCard"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v20, "text/x-vNote"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v20, "text/x-vtodo"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    :goto_3
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v9}, Lcom/android/mms/model/SlideshowModel;->checkDRMExtension(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    const-string v2, "cid:"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v2, "cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    :goto_4
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    if-eqz v17, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    :goto_5
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    :goto_6
    invoke-virtual {v14, v6}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_2

    :cond_2
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/model/SlideshowModel;->checkMediaFileName(IILcom/android/mms/model/MediaModel;Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/mms/model/MediaModel;->setSrc(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v13, v7

    goto :goto_4

    :cond_4
    const/16 v2, 0x2e

    invoke-virtual {v13, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    const/4 v2, -0x1

    if-eq v12, v2, :cond_5

    if-nez v12, :cond_6

    :cond_5
    move-object v8, v13

    :goto_7
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v13, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_7
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v2

    if-eqz v2, :cond_8

    check-cast v5, Lcom/android/mms/model/TextModel;

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_6

    :cond_8
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    goto :goto_6

    :cond_a
    const-string v2, "Mms/slideshow"

    const-string v20, "Unsupport media: "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_6

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    if-eqz v11, :cond_d

    if-eqz p3, :cond_d

    if-eqz p1, :cond_d

    const v2, 0x7f090051

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object p2

    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mms/model/SlideshowModel;->makeVItemPart(Lcom/google/android/mms/pdu/PduBody;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14}, Lcom/android/mms/model/SlideshowModel;->makeSmilPart(Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;)V

    return-object v14
.end method

.method private makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method private static makeRegionModelList(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/util/ArrayList;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    const/4 v12, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_0

    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/smil/SMILRegionElement;

    new-instance v0, Lcom/android/mms/model/RegionModel;

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v3

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v4

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v5

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v6

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v1

    add-int/2addr v12, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return v12
.end method

.method private makeSmilPart(Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1, v1}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    new-instance v0, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    const-string v2, "smil"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    const-string v2, "smil.xml"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    const-string v2, "application/smil"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    invoke-virtual {p2, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/slideshow"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_2
    throw v0

    :catch_1
    move-exception v1

    const-string v2, "Mms/slideshow"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private makeVItemPart(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 8

    const/4 v4, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    new-instance v0, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    if-eq v2, v4, :cond_0

    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v6}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    iget-object v6, v1, Lcom/android/mms/model/AttachmentModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getData()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private registerObserver(Lcom/android/mms/model/Model;)V
    .locals 3

    invoke-virtual {p1, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    iget-object v2, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {p1, v1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setAddAttachmentSlide(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    return-void
.end method

.method public static setAddAttachmentSlideForCompose(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    return-void
.end method

.method public static setCheckMessageSizeforSlide(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/mms/model/SlideshowModel;->mCheckMessageSize:Z

    return-void
.end method


# virtual methods
.method public add(ILcom/android/mms/model/SlideModel;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    invoke-direct {p0, p2}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/mms/model/SlideModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/SlideModel;)Z
    .locals 3

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    invoke-direct {p0, p1}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/mms/model/SlideModel;

    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAttachment(ILcom/android/mms/model/AttachmentModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/AttachmentModel;->getMediaSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    invoke-direct {p0, p2}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    :cond_0
    return-void
.end method

.method public addAttachment(Lcom/android/mms/model/AttachmentModel;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/model/SlideshowModel;->addAttachment(ILcom/android/mms/model/AttachmentModel;)V

    return-void
.end method

.method public checkMessageSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(IILandroid/content/ContentResolver;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v3, p0}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    iget-object v4, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    :cond_2
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/mms/model/SlideModel;
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentList()Ljava/lang/String;
    .locals 5

    const-string v1, ""

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v4, "text/x-vCard"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".vcf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".vcf"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public getCurrentMessageSize()I
    .locals 1

    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    return v0
.end method

.method public getLayout()Lcom/android/mms/model/LayoutModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    return-object v0
.end method

.method public getRawAttachmentsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRawAttachmentsSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRemainContentsSize()I
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v0

    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSlides()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    return-object v0
.end method

.method public increaseMessageSize(I)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDrmContentsPresent()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isRawAttachmentPresent()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    return v0
.end method

.method public isSimple()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-eq v3, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    xor-int/2addr v3, v4

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->isCanAddVideo()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->isCanAddVideo()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2

    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    :cond_0
    return-void
.end method

.method public prepareForSend()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->cloneText()V

    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/SlideModel;
    .locals 2

    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAttachment(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    iget v2, v0, Lcom/android/mms/model/AttachmentModel;->mSize:I

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->unregisterAllModelChangedObservers()V

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAttachment(Ljava/lang/Object;I)Z
    .locals 3

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    iget v2, v0, Lcom/android/mms/model/AttachmentModel;->mSize:I

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->unregisterAllModelChangedObservers()V

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;
    .locals 4

    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    :cond_0
    if-le v0, v1, :cond_4

    sub-int v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    sub-int v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0, p2}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    return-object v2

    :cond_4
    sub-int v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    goto :goto_0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/android/mms/model/SlideModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentMessageSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sync(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 7

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content-Type of the part may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/mms/model/AttachmentModel;->setUri(Landroid/net/Uri;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toPduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->unregisterAllModelChangedObservers()V

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    :cond_0
    return-void
.end method
