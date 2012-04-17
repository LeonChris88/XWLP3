.class final Lcom/android/mms/transaction/TransactionService$ServiceHandler;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPendingTxn: transaction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object p1, v0

    :cond_1
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lcom/android/mms/transaction/Transaction;->setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPendingTxn: process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started deferred processing of transaction  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_5
    const/4 p1, 0x0

    :try_start_3
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4, v3}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Mms:transaction"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "Mms:transaction"

    const-string v5, "processPendingTxn: no more transaction, endMmsConnectivity"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    goto :goto_0
.end method

.method private processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x1

    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v5, p1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Mms:transaction"

    const-string v8, "Transaction already pending: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v7

    :goto_0
    return v10

    :cond_2
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v5, p1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Mms:transaction"

    const-string v8, "Duplicated transaction: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_5
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "Mms:transaction"

    const-string v8, "processTransaction: call beginMmsConnectivity..."

    invoke-static {v6, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v1

    if-ne v1, v10, :cond_8

    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "Mms:transaction"

    const-string v8, "processTransaction: connResult=APN_REQUEST_STARTED, defer transaction pending MMS connectivity"

    invoke-static {v6, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    monitor-exit v7

    goto :goto_0

    :cond_8
    if-le v1, v10, :cond_a

    iget-object v6, p1, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v6

    if-nez v6, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/android/mms/transaction/NotificationTransaction;

    move-object v3, v0

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/mms/transaction/NotificationTransaction;->getUri()Landroid/net/Uri;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v6, v8, v9}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    :cond_9
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1, v6}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->notifyObservers()V

    monitor-exit v7

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "Mms:transaction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding transaction to \'mProcessing\' list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7530

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processTransaction: starting transaction "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1, v6}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->process()V

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v21

    if-eqz v21, :cond_0

    const-string v21, "Mms:transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Handling incoming message: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    const-string v21, "Mms:transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "what="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Looper;->quit()V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v22

    monitor-enter v22

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_2

    monitor-exit v22

    goto :goto_0

    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21

    :cond_2
    :try_start_1
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v21

    if-eqz v21, :cond_3

    const-string v21, "Mms:transaction"

    const-string v22, "handle EVENT_CONTINUE_MMS_CONNECTIVITY event..."

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v11

    if-eqz v11, :cond_4

    const-string v21, "Mms:transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Extending MMS connectivity returned "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " instead of APN_ALREADY_ACTIVE"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Lcom/android/common/NetworkConnectivityListener;

    move-result-object v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Lcom/android/common/NetworkConnectivityListener;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/common/NetworkConnectivityListener;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v21

    if-eqz v21, :cond_5

    const-string v21, "Mms:transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Handle DATA_STATE_CHANGED event: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v21

    if-eqz v21, :cond_1

    const-string v21, "Mms:transaction"

    const-string v22, "   type is not TYPE_MOBILE_MMS, bail"

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-nez v21, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v21

    if-eqz v21, :cond_1

    const-string v21, "Mms:transaction"

    const-string v22, "   TYPE_MOBILE_MMS not connected, bail"

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v13, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v13, v0, v1}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v21

    if-eqz v21, :cond_1

    const-string v21, "Mms:transaction"

    const-string v22, "   empty MMSC url, bail"

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0x7530

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v21, "Mms:transaction"

    const-string v22, "pdp connected !!!! EVENT_DATA_STATE_CHANGED message reached on TransactinService"

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    :try_start_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    new-instance v17, Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getProxyPort()I

    move-result v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v8, v1, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v21

    if-eqz v21, :cond_a

    const-string v21, "Mms:transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "handle EVENT_TRANSACTION_REQUEST: transactionType="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    packed-switch v18, :pswitch_data_0

    const-string v21, "Mms:transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid transaction type: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v15, 0x0

    if-nez v15, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v21

    if-eqz v21, :cond_b

    const-string v21, "Mms:transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Transaction was null. Stopping self: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    :cond_c
    :try_start_3
    new-instance v17, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_e

    new-instance v16, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    move-object/from16 v15, v16

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v21

    if-nez v21, :cond_12

    const/4 v15, 0x0

    if-nez v15, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v21

    if-eqz v21, :cond_d

    const-string v21, "Mms:transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Transaction was null. Stopping self: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    :cond_e
    :try_start_4
    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getPushData()[B

    move-result-object v10

    new-instance v9, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v9, v10}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    const/16 v19, 0x82

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    const-string v21, "Mms:transaction"

    const-string v22, "new MMS noti comming"

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    check-cast v6, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v12, v2, v6}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V

    move-object/from16 v15, v16

    goto :goto_2

    :cond_f
    const-string v21, "Mms:transaction"

    const-string v22, "Invalid PUSH data."

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v15, 0x0

    if-nez v15, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v21

    if-eqz v21, :cond_10

    const-string v21, "Mms:transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Transaction was null. Stopping self: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    :pswitch_1
    :try_start_5
    const-string v21, "Mms:transaction"

    const-string v22, "start deferred retrieve"

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/android/mms/transaction/RetrieveTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    move-object/from16 v15, v16

    goto/16 :goto_2

    :pswitch_2
    const-string v21, "Mms:transaction"

    const-string v22, "start send"

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v21

    if-eqz v21, :cond_11

    const-string v21, "GATE"

    const-string v22, "<GATE-M>MMS_SENDING</GATE-M>"

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    new-instance v16, Lcom/android/mms/transaction/SendTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/android/mms/transaction/SendTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    move-object/from16 v15, v16

    goto/16 :goto_2

    :pswitch_3
    new-instance v16, Lcom/android/mms/transaction/ReadRecTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/android/mms/transaction/ReadRecTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    move-object/from16 v15, v16

    goto/16 :goto_2

    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v21

    if-eqz v21, :cond_13

    const-string v21, "Mms:transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Started processing of incoming message: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_13
    if-nez v15, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v21

    if-eqz v21, :cond_14

    const-string v21, "Mms:transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Transaction was null. Stopping self: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v5

    :try_start_6
    const-string v21, "Mms:transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception occurred while handling message: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v15, :cond_16

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v22

    monitor-enter v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v22
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_15
    const/4 v15, 0x0

    :cond_16
    :goto_3
    if-nez v15, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v21

    if-eqz v21, :cond_17

    const-string v21, "Mms:transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Transaction was null. Stopping self: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    :catchall_1
    move-exception v21

    :try_start_9
    monitor-exit v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v21
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v14

    :try_start_b
    const-string v21, "Mms:transaction"

    const-string v22, "Unexpected Throwable."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const/4 v15, 0x0

    goto :goto_3

    :catchall_2
    move-exception v21

    const/4 v15, 0x0

    :try_start_c
    throw v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v21

    if-nez v15, :cond_19

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v22

    if-eqz v22, :cond_18

    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Transaction was null. Stopping self: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    :cond_19
    throw v21

    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_4
        0x64 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
