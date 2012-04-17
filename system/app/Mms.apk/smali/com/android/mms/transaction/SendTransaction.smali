.class public Lcom/android/mms/transaction/SendTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "SendTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mSendReqURI:Landroid/net/Uri;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SendTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public process()V
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 25

    :try_start_0
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/util/RateController;->isLimitSurpassed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v15}, Lcom/android/mms/util/RateController;->isAllowedByUser()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Mms/SendTransaction"

    const-string v2, "Sending rate limit surpassed."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    const-string v1, "Mms/SendTransaction"

    const-string v2, "Delivery failed."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v14, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v20

    check-cast v20, Lcom/google/android/mms/pdu/SendReq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    div-long v9, v1, v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getOptionalFieldAttendance()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v10}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "date"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "GT-I9100"

    const-string v2, "SPH-D710"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-I9100"

    const-string v2, "SPH-D705"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-I9100"

    const-string v2, "ISW11SC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_3
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v1, v11}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_4
    :goto_1
    const-string v1, "Mms/SendTransaction"

    const-string v2, "start sending"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v22

    new-instance v13, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v13, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getOptionalFieldAttendance()Z

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/mms/pdu/PduComposer;->setOptionalFieldAttendance(Z)V

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/util/SendingProgressTokenManager;->get(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->sendPdu(J[B)[B

    move-result-object v19

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/util/SendingProgressTokenManager;->remove(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSavePduFiles()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "SendReq"

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/transaction/SavePduFiles;->save(Ljava/lang/String;[B)V

    const-string v1, "SendConf"

    move-object/from16 v0, v19

    invoke-static {v1, v0}, Lcom/android/mms/transaction/SavePduFiles;->save(Ljava/lang/String;[B)V

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v18, Ljava/lang/String;

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>([B)V

    const-string v1, "Mms/SendTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SendTransaction] run: send mms msg ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), resp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v1, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v19

    invoke-direct {v1, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v7

    check-cast v7, Lcom/google/android/mms/pdu/SendConf;

    if-nez v7, :cond_a

    const-string v1, "Mms/SendTransaction"

    const-string v2, "No M-Send.conf received. Return here!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    const-string v1, "Mms/SendTransaction"

    const-string v2, "Delivery failed."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    :cond_8
    :try_start_2
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v2, "insert-address-token"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v21

    :try_start_3
    const-string v1, "Mms/SendTransaction"

    invoke-static/range {v21 .. v21}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    const-string v1, "Mms/SendTransaction"

    const-string v2, "Delivery failed."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    :cond_a
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v16

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/SendConf;->getTransactionId()[B

    move-result-object v8

    move-object/from16 v0, v16

    invoke-static {v0, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "Mms/SendTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent Transaction-ID: req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", conf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    const-string v1, "Mms/SendTransaction"

    const-string v2, "Delivery failed."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    :cond_c
    :try_start_5
    new-instance v4, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/SendConf;->getResponseStatus()I

    move-result v17

    const-string v1, "resp_st"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v1, 0x80

    move/from16 v0, v17

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "Mms/SendTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server returned an error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    const-string v1, "Mms/SendTransaction"

    const-string v2, "Delivery failed."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    :cond_e
    :try_start_6
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/SendConf;->getMessageId()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v12

    const-string v1, "m_id"

    invoke-virtual {v4, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-static {v1, v0, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    const-string v1, "Mms/SendTransaction"

    const-string v2, "Delivery failed."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    const-string v2, "Mms/SendTransaction"

    const-string v3, "Delivery failed."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    throw v1
.end method
