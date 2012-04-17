.class public Lcom/android/mms/transaction/ReadRecTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "ReadRecTransaction.java"


# instance fields
.field private final mReadReportURI:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/ReadRecTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public process()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    :try_start_0
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    check-cast v3, Lcom/google/android/mms/pdu/ReadRecInd;

    new-instance v5, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v6, "insert-address-token"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v3, v5}, Lcom/google/android/mms/pdu/ReadRecInd;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    new-instance v5, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/ReadRecTransaction;->sendPdu([B)[B

    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    sget-object v6, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v6}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v7, :cond_0

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v5, "Mms/ReadRecTransaction"

    const-string v6, "Failed to send M-Read-Rec.Ind."

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v7, :cond_1

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v5, "Mms/ReadRecTransaction"

    const-string v6, "Failed to load message from Outbox."

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    const-string v5, "Mms/ReadRecTransaction"

    const-string v6, "Unexpected RuntimeException."

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v7, :cond_3

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    goto :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v6

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v7, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    throw v5
.end method
