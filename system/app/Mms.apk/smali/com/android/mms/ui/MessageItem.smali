.class public Lcom/android/mms/ui/MessageItem;
.super Ljava/lang/Object;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mAddress:Ljava/lang/String;

.field mAttachmentCount:I

.field mAttachmentType:I

.field mBody:Ljava/lang/String;

.field private mBoxId:I

.field mCachedFormattedMessage:Ljava/lang/CharSequence;

.field mContact:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

.field mErrorCode:I

.field mErrorType:I

.field mExpireDate:Ljava/lang/String;

.field mFirstAttachItemType:I

.field mFirstAttachName:Ljava/lang/String;

.field mGroupId:J

.field mGroupType:I

.field mHasAttachment:Z

.field mHasDrmContents:Z

.field mHasSeperator:Z

.field mHighlight:Ljava/util/regex/Pattern;

.field mIsCbSms:Z

.field mLastSendingState:Z

.field mLocked:Z

.field mMMSRead:I

.field mMessageSize:I

.field mMessageType:I

.field mMessageUri:Landroid/net/Uri;

.field final mMsgId:J

.field mReadReport:Z

.field mSMSRead:I

.field mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field mSubject:Ljava/lang/String;

.field final mThreadId:J

.field mTime:J

.field mTimestamp:Ljava/lang/String;

.field final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Mms/MessageItem"

    sput-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mGroupType:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    const-string v23, "sms"

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-wide/16 v23, -0x1

    cmp-long v23, v18, v23

    if-nez v23, :cond_2

    sget-object v23, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    :goto_0
    sget-object v23, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v24, v0

    invoke-static/range {v23 .. v25}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    const-string v23, "CBmessages"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v23

    if-eqz v23, :cond_5

    const v23, 0x7f090011

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/mms/ui/MessageItem;->mTime:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v23

    if-nez v23, :cond_0

    const v23, 0x7f090015

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v5, v6, v1}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_8

    const/16 v23, 0x1

    :goto_2
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mErrorCode:I

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsGroupId:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsGroupType:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mGroupType:I

    :cond_1
    :goto_3
    return-void

    :cond_2
    const-wide/16 v23, 0x40

    cmp-long v23, v18, v23

    if-ltz v23, :cond_3

    sget-object v23, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    :cond_3
    const-wide/16 v23, 0x20

    cmp-long v23, v18, v23

    if-ltz v23, :cond_4

    sget-object v23, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    :cond_4
    sget-object v23, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    const v23, 0x7f090123

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_7

    const-string v23, ""

    :goto_4
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v23

    goto :goto_4

    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_2

    :cond_9
    const-string v23, "mms"

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    sget-object v23, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v24, v0

    invoke-static/range {v23 .. v25}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsRead:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_a

    new-instance v22, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    invoke-static/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    :cond_a
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_b

    const/16 v23, 0x1

    :goto_5
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v12

    const/16 v23, 0x82

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    sget-object v23, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v11

    check-cast v11, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    new-instance v23, Ljava/lang/String;

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    const-wide/16 v25, 0x3e8

    mul-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTime:J

    const v23, 0x7f090016

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    mul-long v26, v26, v28

    const/16 v28, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v23

    if-nez v23, :cond_1

    const v23, 0x7f090015

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mTime:J

    move-wide/from16 v26, v0

    const/16 v28, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_3

    :cond_b
    const/16 v23, 0x0

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v9

    check-cast v9, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->isDrmContentsPresent()Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasDrmContents:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mAttachmentCount:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentCount:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v13

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mFirstAttachName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/mms/ui/MessageUtils;->getFirstAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mFirstAttachItemType:I

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v23, v0

    const/16 v24, 0x84

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    move-object/from16 v16, v9

    check-cast v16, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/RetrieveConf;->getDate()J

    move-result-wide v23

    const-wide/16 v25, 0x3e8

    mul-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTime:J

    :goto_7
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    const v24, 0x7f090011

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    :cond_e
    sget-object v23, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    :goto_8
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    const v24, 0x7f090011

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_14

    :cond_f
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    :goto_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v17

    if-eqz v17, :cond_10

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v23

    if-eqz v23, :cond_10

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/TextModel;->isDrmProtected()Z

    move-result v23

    if-eqz v23, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f090020

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_10
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    goto/16 :goto_6

    :cond_11
    const v23, 0x7f090011

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    check-cast v9, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v23

    const-wide/16 v25, 0x3e8

    mul-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTime:J

    goto/16 :goto_7

    :cond_12
    :try_start_1
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v23, 0x80

    move/from16 v0, v23

    if-ne v15, v0, :cond_13

    sget-object v23, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v10

    sget-object v23, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v24, "Value for delivery report was invalid."

    invoke-static/range {v23 .. v24}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v23, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_8

    :cond_13
    :try_start_2
    sget-object v23, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    :cond_14
    :try_start_3
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v23, 0x80

    move/from16 v0, v23

    if-ne v15, v0, :cond_15

    const/16 v23, 0x1

    :goto_b
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_9

    :catch_1
    move-exception v10

    sget-object v23, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v24, "Value for read report was invalid."

    invoke-static/range {v23 .. v24}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto/16 :goto_9

    :cond_15
    const/16 v23, 0x0

    goto :goto_b

    :cond_16
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_a

    :catch_2
    move-exception v7

    sget-object v23, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v24, "MMS has zero slides"

    invoke-static/range {v23 .. v24}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_17
    const-string v23, "wpm"

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    sget-object v23, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v23, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v24, v0

    invoke-static/range {v23 .. v25}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_18

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmHref:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    :goto_c
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTime:J

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_19

    const/16 v23, 0x1

    :goto_d
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    const v23, 0x7f090015

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mTime:J

    move-wide/from16 v26, v0

    const/16 v28, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_3

    :cond_18
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v24, v0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmHref:I

    move/from16 v24, v0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    goto/16 :goto_c

    :cond_19
    const/16 v23, 0x0

    goto :goto_d

    :cond_1a
    new-instance v23, Lcom/google/android/mms/MmsException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unknown type of the message: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v23
.end method

.method private interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getBoxId()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mGroupType:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    goto :goto_0
.end method

.method public getCachedFormattedMessage()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    return-wide v0
.end method

.method public getThreadId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    return-wide v0
.end method

.method public isDownloaded()Z
    .locals 2

    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailedMessage()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    move v1, v2

    :goto_2
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method public isGroupSms()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-wide v2, p0, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInboxMessage()Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v0, v3, :cond_2

    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v0, v3, :cond_3

    move v2, v3

    :goto_1
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method

.method public isMms()Z
    .locals 2

    const-string v0, "mms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingMessage()Z
    .locals 7

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v0, v6, :cond_3

    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    if-eq v0, v6, :cond_0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_4

    :cond_0
    move v2, v3

    :goto_1
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    return v4

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1
.end method

.method public isSending()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSms()Z
    .locals 2

    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWpm()Z
    .locals 2

    const-string v0, "wpm"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCachedFormattedMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/mms/Log;->isPrintSecured()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " box: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delivery status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MessageItem"

    goto :goto_0
.end method

.method public updateFailedFlag()V
    .locals 14

    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    const-string v0, "protocol"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "message"

    iget-wide v1, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_1

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "err_type"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v7, v8

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_1

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public updatePendingStatus()V
    .locals 9

    const/4 v2, 0x0

    const/4 v6, 0x0

    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "err_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "retry_index"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "due_time"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "last_try"

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
