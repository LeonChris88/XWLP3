.class public Lcom/android/mms/transaction/NotificationTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "NotificationTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContentLocation:Ljava/lang/String;

.field private mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p4, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/NotificationTransaction"

    const-string v2, "Failed to save NotificationInd in constructor."

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/NotificationTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load NotificationInd from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private sendNotifyRespInd(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/mms/pdu/NotifyRespInd;

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->sendPdu([BLjava/lang/String;)[B

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendPdu([B)[B

    goto :goto_0
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public process()V
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 14

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    const-string v9, "Mms/NotificationTransaction"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Notification transaction launched: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x83

    if-eqz v0, :cond_0

    if-eqz v1, :cond_5

    :cond_0
    iget-object v9, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v10, 0x80

    invoke-virtual {v2, v9, v10}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    :cond_2
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v9}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    const-string v9, "Mms/NotificationTransaction"

    const-string v10, "NotificationTransaction failed."

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    :goto_1
    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v9, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v10, 0x81

    invoke-virtual {v2, v9, v10}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    const-string v9, "Mms/NotificationTransaction"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Location: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v6, 0x0

    :try_start_2
    const-string v9, "Mms/NotificationTransaction"

    const-string v10, "start immediate retrieve"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/mms/transaction/NotificationTransaction;->getPdu(Ljava/lang/String;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_7

    :try_start_3
    new-instance v9, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v9, v6}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v9

    const/16 v10, 0x84

    if-eq v9, v10, :cond_f

    :cond_6
    const-string v9, "Mms/NotificationTransaction"

    const-string v10, "Invalid M-RETRIEVE.CONF PDU."

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    const/16 v7, 0x84

    :cond_7
    :goto_3
    const-string v9, "Mms/NotificationTransaction"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "status=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v7, :pswitch_data_0

    :cond_8
    :goto_4
    :pswitch_0
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10, v11}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_2

    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    if-eqz v0, :cond_9

    if-eqz v1, :cond_a

    :cond_9
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    :cond_a
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v9}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    const-string v9, "Mms/NotificationTransaction"

    const-string v10, "NotificationTransaction failed."

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    goto/16 :goto_1

    :catch_0
    move-exception v3

    :try_start_4
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    :catch_1
    move-exception v3

    :try_start_5
    const-string v9, "Mms/NotificationTransaction"

    invoke-static {v3}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    if-eqz v0, :cond_c

    if-eqz v1, :cond_d

    :cond_c
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    :cond_d
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v9}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_e

    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    const-string v9, "Mms/NotificationTransaction"

    const-string v10, "NotificationTransaction failed."

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    goto/16 :goto_1

    :cond_f
    :try_start_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSavePduFiles()Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v9, "RetrieveConf"

    invoke-static {v9, v6}, Lcom/android/mms/transaction/SavePduFiles;->save(Ljava/lang/String;[B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_10
    const/16 v7, 0x81

    :try_start_7
    invoke-direct {p0, v7}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_5
    :try_start_8
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    sget-object v9, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v9}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v9, v8, v10}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    iput-object v8, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v3

    :try_start_9
    const-string v9, "Mms/NotificationTransaction"

    invoke-static {v3}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    if-eqz v0, :cond_11

    if-eqz v1, :cond_12

    :cond_11
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    :cond_12
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v9}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_13

    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    const-string v9, "Mms/NotificationTransaction"

    const-string v10, "NotificationTransaction failed."

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    goto/16 :goto_1

    :catch_3
    move-exception v3

    :try_start_a
    const-string v9, "Mms/NotificationTransaction"

    invoke-static {v3}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v11, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    if-eqz v0, :cond_14

    if-eqz v1, :cond_15

    :cond_14
    iget-object v10, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    :cond_15
    iget-object v10, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v10}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_16

    iget-object v10, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    const-string v10, "Mms/NotificationTransaction"

    const-string v11, "NotificationTransaction failed."

    invoke-static {v10, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    throw v9

    :pswitch_1
    :try_start_b
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v9}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
