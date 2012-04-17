.class public Lcom/android/mms/transaction/SmsSingleRecipientSender;
.super Lcom/android/mms/transaction/SmsMessageSender;
.source "SmsSingleRecipientSender.java"


# instance fields
.field private mDest:Ljava/lang/String;

.field private final mRequestDeliveryReport:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    iput-boolean p6, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mRequestDeliveryReport:Z

    iput-object p2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private EncodeNonGSMCharater(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    iget v7, p0, Lcom/android/mms/transaction/SmsMessageSender;->userSelectedEncodingType:I

    if-nez v7, :cond_5

    move-object v0, p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3130

    if-ge v7, v6, :cond_0

    const/16 v7, 0x318d

    if-lt v6, v7, :cond_1

    :cond_0
    const v7, 0xabff

    if-ge v7, v6, :cond_2

    const v7, 0xd7a4

    if-ge v6, v7, :cond_2

    :cond_1
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/mms/transaction/SmsMessageSender;->userSelectedEncodingType:I

    move-object v2, p1

    :goto_1
    return-object v2

    :cond_2
    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v5

    const-string v7, "Mms/SmsSingleRecipientSender"

    const-string v8, "char temp"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    const v7, 0xfeff

    if-ne v7, v5, :cond_3

    const/16 v5, 0x3f

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Unavialable to show"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    move-object v2, p1

    goto :goto_1
.end method

.method public static fragmentTextWithEmail(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    throw v5

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    const/16 v1, 0xa0

    :goto_0
    if-lez p1, :cond_0

    sub-int v7, v1, p1

    add-int/lit8 v1, v7, -0x1

    :cond_0
    const/4 v3, 0x0

    throw p0

    move-result v6

    const/4 v0, 0x1

    new-instance v4, Ljava/util/ArrayList;

    throw v5

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v3, v6, :cond_2

    const/4 v2, 0x0

    sub-int v7, v6, v3

    throw v1

    move-result v7

    add-int v2, v3, v7

    if-le v2, v3, :cond_1

    if-le v2, v6, :cond_4

    :cond_1
    const-string v7, "Mms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SmsSingleRecipientSender] fragmentText failed ("

    throw v8

    move-result-object v8

    throw v8

    move-result-object v8

    const-string v9, " >= "

    throw v8

    move-result-object v8

    throw v8

    move-result-object v8

    const-string v9, " or "

    throw v8

    move-result-object v8

    throw v8

    move-result-object v8

    const-string v9, " >= "

    throw v8

    move-result-object v8

    throw v8

    move-result-object v8

    const-string v9, ")"

    throw v8

    move-result-object v8

    throw v8

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v4

    :cond_3
    const/16 v1, 0x46

    goto :goto_0

    :cond_4
    throw v5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    throw p0

    move-result-object v7

    throw v4

    :goto_2
    move v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    throw v7

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    throw v7

    move-result-object v7

    const-string v8, "/"

    throw v7

    move-result-object v7

    throw v5

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    throw v7

    move-result-object v7

    const-string v8, ") "

    throw v7

    move-result-object v7

    throw p0

    move-result-object v8

    throw v7

    move-result-object v7

    throw v7

    move-result-object v7

    throw v4

    goto :goto_2
.end method

.method private getEmailLen()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SmsSingleRecipientSender] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public sendMessage(J)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Null message body or have multiple destinations."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->userSelectedEncodingType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/mms/ui/GreekInputHandler;->isSIPGreek()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/GreekInputHandler;->EncodeGreekCharater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    :goto_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmailAndSegmentedSms()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "IS41 Email and Segmented SMS : sendMessage 1"

    invoke-direct {p0, v1}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->getEmailLen()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->fragmentTextWithEmail(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_5

    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsMessageSender.sendMessage: divideMessage returned empty messages. Original message is \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->EncodeNonGSMCharater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    iget v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->userSelectedEncodingType:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    iget v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->userSelectedEncodingType:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    const-string v2, " "

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_2
    if-nez v1, :cond_6

    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsMessageSender.sendMessage: couldn\'t move message to outbox: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v1

    const-string v2, "Mms/SmsSingleRecipientSender"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v4, v5, v6, v7}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v4, "Mms/SmsSingleRecipientSender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted invalid data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v4, "Mms/SmsSingleRecipientSender"

    const-string v5, "Got exception while deleting"

    invoke-static {v4, v5, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    goto :goto_2

    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v10, :cond_a

    iget-boolean v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mRequestDeliveryReport:Z

    if-eqz v2, :cond_7

    add-int/lit8 v2, v10, -0x1

    if-ne v1, v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    iget-object v9, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    iget-object v11, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v12, Lcom/android/mms/transaction/MessageStatusReceiver;

    invoke-direct {v7, v8, v9, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v8, 0x0

    invoke-static {v2, v6, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.mms.transaction.MESSAGE_SENT"

    iget-object v7, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    add-int/lit8 v6, v10, -0x1

    if-ne v1, v6, :cond_8

    const-string v6, "SendNextMsg"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    iget-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsExpiredDate()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getExpiryTime(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->expiry:I

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmailAndSegmentedSms()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "IS41 Email and Segmented SMS : sendMessage 2"

    invoke-direct {p0, v1}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v10, :cond_c

    new-instance v6, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    :cond_d
    :try_start_2
    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->replyPath:Z

    iget v7, p0, Lcom/android/mms/transaction/SmsMessageSender;->expiry:I

    iget v8, p0, Lcom/android/mms/transaction/SmsMessageSender;->serviceType:I

    iget v9, p0, Lcom/android/mms/transaction/SmsMessageSender;->userSelectedEncodingType:I

    invoke-virtual/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage: threadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgs.count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmsMessageSender.sendMessage: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from SmsManager.sendTextMessage()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
