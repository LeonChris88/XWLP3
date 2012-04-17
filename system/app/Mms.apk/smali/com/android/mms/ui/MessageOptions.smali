.class public Lcom/android/mms/ui/MessageOptions;
.super Ljava/lang/Object;
.source "MessageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageOptions$ErrorReasonDisplayer;,
        Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;,
        Lcom/android/mms/ui/MessageOptions$AttachCancelListener;,
        Lcom/android/mms/ui/MessageOptions$AttachOkListener;,
        Lcom/android/mms/ui/MessageOptions$PduBodyCache;,
        Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;,
        Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;,
        Lcom/android/mms/ui/MessageOptions$CreationOkListener;,
        Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;
    }
.end annotation


# static fields
.field private static final STORE_DIR:Ljava/lang/String;

.field public static isSipVisible:Z

.field private static mRenameDialog:Landroid/app/Dialog;

.field static saveMode:Z


# instance fields
.field private attachMsgId:J

.field private attachmentFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field private mEditField:Landroid/widget/EditText;

.field private mEmptyNameToast:Landroid/widget/Toast;

.field mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mNegativeButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private mRawAttachmentHandler:Landroid/os/Handler;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleIcon:Landroid/widget/ImageView;

.field mType:Ljava/lang/String;

.field msgId:J

.field mthisContext:Landroid/content/Context;

.field private numberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rawAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private replaceFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/ui/MessageOptions;->isSipVisible:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageOptions;->STORE_DIR:Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/ui/MessageOptions;->saveMode:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->sb:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->attachmentFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->rawAttachments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->replaceFileMap:Ljava/util/HashMap;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/MessageOptions;->attachMsgId:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mRawAttachmentHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    iput-wide p4, p0, Lcom/android/mms/ui/MessageOptions;->msgId:J

    iput-object p6, p0, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    new-instance v0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions;->resendGroupSmsMessageItem(Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageOptions;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mEmptyNameToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/MessageOptions;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mEmptyNameToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageOptions;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->replaceFileMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/app/Dialog;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mRenameDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    sput-object p0, Lcom/android/mms/ui/MessageOptions;->mRenameDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageOptions;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mPositiveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageOptions;JLcom/android/mms/model/AttachmentModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions;->copyMedia(JLcom/android/mms/model/AttachmentModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageOptions;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mRawAttachmentHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->STORE_DIR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->rawAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->attachmentFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageOptions;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/MessageOptions;->attachMsgId:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageOptions;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions;->startExportRawAttachments(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->startCheckFileName(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageOptions;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mEditField:Landroid/widget/EditText;

    return-object v0
.end method

.method private checkCRForRawAttachment()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Raw Attachment"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f09008f

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x1080027

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz p2, :cond_0

    const v0, 0x7f090092

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    invoke-virtual {v1, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x104

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const v0, 0x7f090091

    goto :goto_0
.end method

.method private copyMedia(JLcom/android/mms/model/AttachmentModel;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMedia(),msgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageOptions$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v4

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    const-string v7, "text/plain"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "application/smil"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p3}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/MessageOptions;->copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v0, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyMedia : is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyPart(),fallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    instance-of v1, v9, Ljava/io/FileInputStream;

    if-eqz v1, :cond_1e

    move-object v0, v9

    check-cast v0, Ljava/io/FileInputStream;

    move-object v8, v0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1d

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_a

    move-object/from16 v1, p2

    :goto_1
    const/4 v2, 0x1

    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v2, 0x1

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, "cid:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v13, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v13}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "name"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "cl"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :cond_4
    if-eqz v2, :cond_1b

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v2, v1

    :goto_2
    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v1, -0x1

    if-ne v3, v1, :cond_f

    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    :goto_3
    const-string v2, "Mms/MessageOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extension"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "dcf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v1, "dcf"

    :cond_5
    if-nez v1, :cond_1a

    const-string v2, "text/x-vCard"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v1, "vcf"

    move-object v2, v1

    :goto_4
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->replaceInvalidFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    const-string v1, "_"

    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->replaceFileMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->replaceFileMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v1

    :goto_6
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_15

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Mms/MessageOptions"

    const-string v5, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " failed!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    const/4 v1, 0x0

    if-eqz v9, :cond_8

    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_8
    :goto_7
    if-eqz v11, :cond_9

    :try_start_5
    throw v11
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_9
    :goto_8
    return v1

    :cond_a
    :try_start_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    move-object v2, v10

    move-object v3, v11

    :goto_9
    :try_start_7
    const-string v4, "Mms/MessageOptions"

    const-string v5, "IOException caught while opening or reading stream"

    invoke-static {v4, v5, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_b
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v1

    move-object v11, v3

    :goto_a
    if-eqz v9, :cond_c

    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_c
    :goto_b
    if-eqz v11, :cond_d

    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    :cond_d
    :goto_c
    throw v1

    :catchall_1
    move-exception v1

    if-eqz v2, :cond_e

    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v1

    :catchall_2
    move-exception v1

    goto :goto_a

    :cond_f
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_3

    :cond_10
    const-string v2, "text/x-vCalendar"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v1, "vcs"

    move-object v2, v1

    goto/16 :goto_4

    :cond_11
    const-string v2, "text/x-vNote"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v1, "vnt"

    move-object v2, v1

    goto/16 :goto_4

    :cond_12
    const-string v2, "text/x-vtodo"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v1, "vts"

    move-object v2, v1

    goto/16 :goto_4

    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_14
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/mms/ui/MessageOptions;->STORE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_6

    :catch_1
    move-exception v2

    const-string v3, "Mms/MessageOptions"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_2
    move-exception v2

    const-string v3, "Mms/MessageOptions"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_15
    :try_start_b
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    const/16 v1, 0x1f40

    :try_start_c
    new-array v1, v1, [B

    :goto_d
    invoke-virtual {v8, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_16

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_d

    :catch_3
    move-exception v1

    goto/16 :goto_9

    :cond_16
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    :goto_e
    if-eqz v9, :cond_19

    :try_start_d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    move v1, v12

    :goto_f
    if-eqz v3, :cond_9

    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_8

    :catch_4
    move-exception v1

    const-string v2, "Mms/MessageOptions"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto/16 :goto_8

    :catch_5
    move-exception v1

    const-string v2, "Mms/MessageOptions"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_f

    :cond_17
    const/4 v1, 0x0

    if-eqz v9, :cond_18

    :try_start_f
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    :cond_18
    :goto_10
    if-eqz v3, :cond_9

    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_8

    :catch_6
    move-exception v1

    const-string v2, "Mms/MessageOptions"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto/16 :goto_8

    :catch_7
    move-exception v1

    const-string v2, "Mms/MessageOptions"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_10

    :catch_8
    move-exception v2

    const-string v3, "Mms/MessageOptions"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :catch_9
    move-exception v2

    const-string v3, "Mms/MessageOptions"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :catch_a
    move-exception v1

    move-object v3, v11

    goto/16 :goto_9

    :cond_19
    move v1, v12

    goto :goto_f

    :cond_1a
    move-object v2, v1

    goto/16 :goto_4

    :cond_1b
    move-object v2, v1

    goto/16 :goto_2

    :cond_1c
    move-object v2, v1

    goto/16 :goto_2

    :cond_1d
    move-object v2, v1

    goto/16 :goto_0

    :cond_1e
    move-object v3, v11

    goto :goto_e
.end method

.method private createAttachmentDialog(ZJLjava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lcom/android/mms/ui/AttachmentListAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const v1, 0x7f030001

    invoke-direct {v6, v0, v1, p4}, Lcom/android/mms/ui/AttachmentListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f090154

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_0

    const v8, 0x7f090101

    new-instance v0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions$AttachOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJ)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v0, 0x7f09006a

    new-instance v1, Lcom/android/mms/ui/MessageOptions$AttachCancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/MessageOptions$AttachCancelListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageOptions$1;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/mms/ui/MessageOptions$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageOptions$2;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v7, v6, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/mms/ui/MessageOptions$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageOptions$3;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->setSaveButton(Landroid/widget/Button;)V

    return-void

    :cond_0
    const v8, 0x7f09003e

    new-instance v0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions$AttachOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJ)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Mms/MessageOptions"

    const-string v1, "forwardMessageStartActivityForMms()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "exit_on_sent"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "forwarded_message"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const-string v2, "msg_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "subject"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "checkCRMode"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v2, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const v1, 0x7f090055

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getFailedAddress(J)[Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "address"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    add-int/lit8 v7, v8, 0x1

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v8

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v10

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move v8, v7

    goto :goto_0
.end method

.method private getFileNameWithPduPart(Lcom/google/android/mms/pdu/PduPart;J)Ljava/lang/String;
    .locals 10

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    :cond_0
    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_8

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "cid:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "cid:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "cl"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v1, -0x1

    if-ne v2, v1, :cond_a

    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_2
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "dcf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v0, "dcf"

    :cond_6
    if-nez v0, :cond_7

    const-string v2, "text/x-vCard"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, "vcf"

    :cond_7
    :goto_3
    if-nez v0, :cond_e

    :goto_4
    return-object v1

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    :cond_a
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :cond_b
    const-string v2, "text/x-vCalendar"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, "vcs"

    goto :goto_3

    :cond_c
    const-string v2, "text/x-vNote"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v0, "vnt"

    goto :goto_3

    :cond_d
    const-string v2, "text/x-vtodo"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "vts"

    goto :goto_3

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_f
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public static isSingleSms(Lcom/android/mms/ui/MessageItem;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    return v2
.end method

.method private islockmessage(Ljava/lang/String;)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v0, "mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v0, v2, v4

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    const-wide/16 v3, 0x1

    cmp-long v0, v8, v3

    if-nez v0, :cond_0

    const/4 v7, 0x1

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :cond_2
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v0, v2, v4

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private resendGroupSmsMessageItem(Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    .locals 10

    invoke-virtual {p3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JJ)V

    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "type=5"

    const/4 v6, 0x0

    invoke-static {v1, v2, v9, v3, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v8

    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v14

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "m_size"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v10, v1

    const-wide/16 v16, 0x0

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    add-long v16, v16, v1

    goto :goto_0

    :cond_0
    cmp-long v1, v16, v10

    if-ltz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v2, 0x7f090106

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->updatePendingStatus()V

    new-instance v13, Lcom/android/mms/transaction/MmsMessageSender;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    int-to-long v2, v2

    invoke-direct {v13, v1, v12, v2, v3}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    :try_start_1
    invoke-interface {v13, v14, v15}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v12, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private resendSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 11

    const/4 v10, 0x0

    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resendSmsMessageItem(),msgItem="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    aput-object v3, v2, v1

    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v3, v7, v10, v10}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v6

    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send SMS message, threadId="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setLockIcon(Z)V
    .locals 2

    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewerActivity;->getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto :goto_0
.end method

.method private showFileRenameDialog(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/ui/MessageOptions;->mRenameDialog:Landroid/app/Dialog;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030019

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f080068

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f080008

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mEditField:Landroid/widget/EditText;

    const v0, 0x7f08006b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mPositiveButton:Landroid/widget/Button;

    const v0, 0x7f08006c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mNegativeButton:Landroid/widget/Button;

    const v0, 0x7f080067

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mTitleIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f090177

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mTitleIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mPositiveButton:Landroid/widget/Button;

    const v1, 0x7f090069

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mNegativeButton:Landroid/widget/Button;

    const v1, 0x7f09006a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->attachmentFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mPositiveButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageOptions$4;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/MessageOptions$4;-><init>(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mNegativeButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageOptions$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageOptions$5;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mRenameDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mRenameDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mRenameDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mEditField:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/MessageOptions$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageOptions$6;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mRenameDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/mms/ui/MessageOptions$7;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageOptions$7;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mRenameDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mRenameDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method private startCheckFileName(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->attachmentFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->showFileRenameDialog(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->rawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->rawAttachments:Ljava/util/ArrayList;

    iget-wide v1, p0, Lcom/android/mms/ui/MessageOptions;->attachMsgId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageOptions;->startExportRawAttachments(Ljava/util/ArrayList;J)V

    goto :goto_0
.end method

.method private startExportRawAttachments(Ljava/util/ArrayList;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;J)V"
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v2, Lcom/android/mms/ui/MessageOptions;->STORE_DIR:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v1, v3

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const-string v5, "text/plain"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v5, "application/smil"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;-><init>(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;Ljava/util/ArrayList;J)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->start()V

    goto :goto_1
.end method

.method private tryToResendGroupSms(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V
    .locals 11

    iget-wide v7, p1, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/MessageOptions;->getFailedAddress(J)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v5}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f090221

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090222

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0901d5

    new-instance v8, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;

    invoke-direct {v8, p0, p1, v2, p2}, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0901cd

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V
    .locals 12

    const-string v0, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyMessageToSIM(),msgItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v4

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mTime:J

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v0}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stime : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    const/16 v5, 0xf

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Mms/MessageOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temp_date : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Mms/MessageOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temp_date : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timestamp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v6, "pref_key_manage_smsc_address"

    const-string v7, "Not Set"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    if-le v3, v6, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    :goto_1
    if-nez v9, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    aput-object v7, v3, v6

    move-object v9, v3

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v8, v7

    move v7, v6

    move v6, v3

    :goto_2
    array-length v3, v9

    if-ge v6, v3, :cond_a

    :try_start_0
    aget-object v3, v9, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v11, 0x7f090025

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v3, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v10, "Mms/MessageOptions"

    const-string v11, "NumberFormatException :"

    invoke-static {v10, v11, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v11, 0x7f090025

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v3, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_3
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    if-nez v2, :cond_6

    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v11, 0x7f090024

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v3, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    aget-object v3, v9, v6

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v10, 0x3

    if-ne v3, v10, :cond_7

    array-length v0, v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    sub-int/2addr v0, v6

    add-int/2addr v7, v0

    :goto_4
    if-nez v3, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v2, 0x7f09023c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move v8, v3

    goto :goto_3

    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    array-length v1, v9

    sub-int/2addr v1, v7

    if-nez v1, :cond_9

    const v1, 0x7f090223

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090224

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_5
    const v1, 0x7f0901cb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_9
    const v2, 0x7f090225

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v3, 0x7f090226

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :cond_a
    move v3, v8

    goto :goto_4
.end method

.method public copyToClipboard(Ljava/lang/String;)V
    .locals 4

    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyToClipboard(),str="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v3, 0x7f09022f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public createOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    const/16 v8, 0x23

    const/16 v7, 0x18

    const/16 v5, 0x12

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v2, v2, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-ne v2, v4, :cond_0

    const v2, 0x7f0900b0

    invoke-interface {p1, v6, v5, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x202014a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v2, 0x7f090022

    invoke-interface {p1, v6, v7, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02006f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    const v3, 0x7f0900ae

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020086

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x1e

    const v3, 0x7f0900ad

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020087

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageOptions;->islockmessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x1d

    const v3, 0x7f0900b2

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020089

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_1
    const v2, 0x7f0900b0

    invoke-interface {p1, v6, v5, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x202014a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f090022

    invoke-interface {p1, v6, v7, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02006f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :cond_3
    const/16 v2, 0x1f

    const v3, 0x7f090023

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020070

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_7

    const v2, 0x7f090154

    invoke-interface {p1, v6, v8, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020067

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_5
    :goto_2
    const/16 v2, 0x11

    const v3, 0x7f090014

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020079

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x1c

    const v3, 0x7f0900b1

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02007b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_7
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    const/16 v3, 0x23

    const/4 v4, 0x0

    const v5, 0x7f090154

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public forwardMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 14

    const/4 v5, -0x3

    const/4 v7, -0x5

    const/4 v6, -0x4

    const/4 v3, 0x0

    const/4 v13, 0x1

    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forwardMessage(),msgItem="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlideForCompose(Z)V

    const-string v1, "sms"

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "exit_on_sent"

    invoke-virtual {v1, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "forwarded_message"

    invoke-virtual {v1, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePrefixFwd()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "sms_body"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FWD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const-string v3, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    const-string v2, "sms_body"

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "exit_on_sent"

    invoke-virtual {v1, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "forwarded_message"

    invoke-virtual {v1, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "sms_body"

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const-string v3, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    new-instance v9, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v9}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const v2, 0x7f090049

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x28

    if-le v2, v4, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    :goto_2
    if-eqz v8, :cond_4

    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v1, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_4
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v2, v3

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v4, v2

    :cond_5
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    :try_start_0
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    check-cast v1, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    goto :goto_4

    :catch_0
    move-exception v1

    move v4, v5

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    check-cast v1, Lcom/android/mms/model/AudioModel;

    invoke-virtual {v1}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_4

    :catch_1
    move-exception v1

    const/4 v4, -0x2

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    check-cast v1, Lcom/android/mms/model/VideoModel;

    invoke-virtual {v1}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_4

    :catch_2
    move-exception v1

    move v4, v6

    goto :goto_4

    :catch_3
    move-exception v1

    move v4, v7

    goto :goto_4

    :cond_8
    move v2, v4

    goto :goto_3

    :cond_9
    move v2, v3

    :cond_a
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v4, v3

    :goto_5
    if-ge v4, v11, :cond_d

    :try_start_1
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v12, "text/x-vNote"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v12, "text/x-vtodo"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->checkCRForRawAttachment()V
    :try_end_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_7

    :cond_c
    move v1, v2

    :goto_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_5

    :catch_4
    move-exception v1

    move v1, v5

    goto :goto_6

    :catch_5
    move-exception v1

    const/4 v1, -0x2

    goto :goto_6

    :catch_6
    move-exception v1

    move v1, v6

    goto :goto_6

    :catch_7
    move-exception v1

    move v1, v7

    goto :goto_6

    :cond_d
    if-eq v2, v7, :cond_e

    if-ne v2, v6, :cond_12

    :cond_e
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v13, :cond_f

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f02005e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09009d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090160

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090069

    new-instance v3, Lcom/android/mms/ui/MessageOptions$CreationOkListener;

    invoke-direct {v3, p0, p1, v9, v8}, Lcom/android/mms/ui/MessageOptions$CreationOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09006a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_f
    if-nez v1, :cond_11

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020096

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    if-ne v2, v6, :cond_10

    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_7
    const v2, 0x7f09016a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_10
    const v2, 0x7f09011d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_7

    :cond_11
    invoke-direct {p0, p1, v9, v8, v3}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_12
    invoke-direct {p0, p1, v9, v8, v3}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_13
    move-object v8, v1

    goto/16 :goto_2
.end method

.method public isPlayerStop(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 5

    const/4 v1, 0x1

    const-string v0, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockMessage(),msgItem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",locked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sms"

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "locked"

    if-eqz p2, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/MessageOptions$1;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/mms/ui/MessageOptions$1;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Landroid/content/ContentValues;)V

    const-string v2, "lockMessage"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const-string v0, "mms"

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public optionItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/MessageOptions;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageOptions;->copyToClipboard(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    move v0, v1

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(Lcom/android/mms/ui/MessageItem;)V

    move v0, v1

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageOptions;->islockmessage(Ljava/lang/String;)Z

    move-result v0

    new-instance v2, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Z)V

    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/MessageOptions;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    move v0, v1

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-wide v2, p0, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    move v0, v1

    goto :goto_0

    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "sendto"

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageOptions;->setLockIcon(Z)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_b
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageOptions;->setLockIcon(Z)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_c
    move v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)Z
    .locals 5

    const/4 v1, 0x1

    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resendMessage(),msgItem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Mms/MessageOptions"

    const-string v3, "message sending is disabled"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const v3, 0x7f09018c

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageOptions;->tryToResendGroupSms(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->resendSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_1
.end method

.method public showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V
    .locals 11

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageOptions$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->attachmentFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->rawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-wide p3, p0, Lcom/android/mms/ui/MessageOptions;->attachMsgId:J

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->replaceFileMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_2

    invoke-virtual {v4, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "text/plain"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/smil"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v7, p3, p4}, Lcom/android/mms/ui/MessageOptions;->getFileNameWithPduPart(Lcom/google/android/mms/pdu/PduPart;J)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/android/mms/model/AttachmentModel;

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v10, v8, v9, v7}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v6, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const v1, 0x7f090155

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p3, p4, v6}, Lcom/android/mms/ui/MessageOptions;->createAttachmentDialog(ZJLjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V
    .locals 13

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "m_type"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "msg_box"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v5, v0

    const/4 v0, 0x1

    const-string v3, "type"

    aput-object v3, v5, v0

    const/4 v0, 0x2

    const-string v3, "address"

    aput-object v3, v5, v0

    const/4 v0, 0x3

    const-string v3, "date"

    aput-object v3, v5, v0

    const/4 v0, 0x4

    const-string v3, "error_code"

    aput-object v3, v5, v0

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Lcom/android/mms/data/ContactList;->formattedNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_0
    const-string v0, "mms"

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :goto_0
    if-eqz v10, :cond_1

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v3, v3, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0, v10, v3, v9, v4}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v12

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f09009a

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_0

    :catch_0
    move-exception v11

    :try_start_1
    const-string v0, "Mms/MessageOptions"

    const-string v3, "Failed view message details"

    invoke-static {v0, v3, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
