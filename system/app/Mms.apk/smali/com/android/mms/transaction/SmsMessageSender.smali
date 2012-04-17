.class public Lcom/android/mms/transaction/SmsMessageSender;
.super Ljava/lang/Object;
.source "SmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# static fields
.field private static final SERVICE_CENTER_PROJECTION:[Ljava/lang/String;


# instance fields
.field protected expiry:I

.field protected final mContext:Landroid/content/Context;

.field private final mDests:[Ljava/lang/String;

.field private mGroupId:J

.field protected mMessageText:Ljava/lang/String;

.field protected final mNumberOfDests:I

.field private mOldGroupId:J

.field protected mServiceCenter:Ljava/lang/String;

.field protected mThreadId:J

.field protected mTimestamp:J

.field protected replyPath:Z

.field protected serviceType:I

.field protected userSelectedEncodingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reply_path_present"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_center"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->replyPath:Z

    const/16 v2, 0xff

    iput v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->expiry:I

    iput v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->serviceType:I

    iput-wide v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mOldGroupId:J

    iput-wide v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mGroupId:J

    iput-object p1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    if-eqz p2, :cond_1

    array-length v2, p2

    iput v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    iget v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    iget v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    iput-wide p4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    iget-wide v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-direct {p0, v2, v3}, Lcom/android/mms/transaction/SmsMessageSender;->getOutgoingServiceCenter(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->userSelectedEncodingType:I

    const-string v2, "pref_key_manage_smsc_address"

    const-string v3, "Not Set"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    if-nez v2, :cond_0

    iput-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    iput v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    iput-wide p6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mOldGroupId:J

    return-void
.end method

.method private addMessageToUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJJ)Landroid/net/Uri;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "body"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p4, :cond_0

    const-string v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "thread_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "group_id"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "hidden"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms/queued"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private getOutgoingServiceCenter(J)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v9

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v8, v0, :cond_4

    :goto_1
    if-eqz v8, :cond_5

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_2
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    move v8, v10

    goto :goto_1

    :cond_5
    move-object v0, v9

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private queueMessage(J)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Null message body or dest."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSupportEmoji()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->convertCharToSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_sms_delivery_reports"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/queued"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    iget-wide v8, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-static/range {v0 .. v9}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mGroupId:J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    iget-wide v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mOldGroupId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    :cond_3
    iget-wide v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mGroupId:J

    iget-wide v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mOldGroupId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/mms/transaction/SmsMessageSender;->updateGroupSms(JJ)V

    :cond_4
    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-ge v0, v1, :cond_5

    :try_start_1
    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v4, v1, v0

    iget-object v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    iget-wide v10, p0, Lcom/android/mms/transaction/SmsMessageSender;->mGroupId:J

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/mms/transaction/SmsMessageSender;->addMessageToUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJJ)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method

.method private updateGroupSms(JJ)V
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "group_type"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    const-string v2, "group_type"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v2, "hidden"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(group_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND type!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public queueMessageForPending(J)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const-string v0, "Mms/SmsMessageSender"

    const-string v1, "queueMessageForPending"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Null message body or dest."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_sms_delivery_reports"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-ge v10, v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/queued"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v10

    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    iget-wide v8, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-static/range {v0 .. v9}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "AutoSendWhenInDomesticCoverage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsMessageSender;->queueMessage(J)Z

    move-result v0

    return v0
.end method
