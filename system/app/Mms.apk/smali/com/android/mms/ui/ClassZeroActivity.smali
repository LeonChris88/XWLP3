.class public Lcom/android/mms/ui/ClassZeroActivity;
.super Landroid/app/Activity;
.source "ClassZeroActivity.java"


# static fields
.field private static final REPLACE_PROJECTION:[Ljava/lang/String;


# instance fields
.field mBody:Ljava/lang/String;

.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mMessage:Landroid/telephony/SmsMessage;

.field private mRead:Z

.field private final mSaveListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTimerSet:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "protocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ClassZeroActivity;->REPLACE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$1;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$2;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$3;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/ClassZeroActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->saveMessage()V

    return-void
.end method

.method private extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "read"

    iget-boolean v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "seen"

    iget-boolean v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v1, "address"

    const v4, 0x7f090172

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ClassZeroActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method private replaceMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 18

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ClassZeroActivity;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v10

    const-string v1, "body"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ClassZeroActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v17

    const-string v5, "address = ? AND protocol = ?"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v16, v6, v1

    const/4 v1, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/ClassZeroActivity;->REPLACE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v2

    invoke-static/range {v7 .. v12}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v9

    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ClassZeroActivity;->storeMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private saveMessage()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->replaceMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->storeMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private storeMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassZeroActivity;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "body"

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v2, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ClassZeroActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const v9, 0x7f020168

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "pdu"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "body"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v5, v10}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f09009f

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/ClassZeroActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0900f8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f090101

    iget-object v9, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v8, 0x104

    iget-object v9, p0, Lcom/android/mms/ui/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030004

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f08000e

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f08000f

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v8, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateClass0SoundnVibrate(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/32 v8, 0x493e0

    add-long/2addr v8, v3

    iput-wide v8, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    if-eqz p1, :cond_0

    const-string v8, "timer_fire"

    iget-wide v9, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {p1, v8, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    goto/16 :goto_0

    :cond_2
    const v8, 0x7f090172

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ClassZeroActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "timer_fire"

    iget-wide v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method protected onStart()V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
