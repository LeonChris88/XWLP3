.class public Lcom/android/mms/transaction/TransactionService;
.super Landroid/app/Service;
.source "TransactionService.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    }
.end annotation


# static fields
.field private static pending2GStatus:Z


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

.field private final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field public mToastHandler:Landroid/os/Handler;

.field private mToastType:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/TransactionService;->pending2GStatus:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->toast:Landroid/widget/Toast;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    new-instance v0, Lcom/android/mms/transaction/TransactionService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$1;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/TransactionService;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/transaction/TransactionService;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService;->toast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/TransactionService;)Lcom/android/common/NetworkConnectivityListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 6

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.mms.intent.action.WAKE_LOCK_RELEASE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "MMS Connectivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getTransactionType(I)I
    .locals 3

    sparse-switch p1, :sswitch_data_0

    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized MESSAGE_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x82 -> :sswitch_0
        0x87 -> :sswitch_1
    .end sparse-switch
.end method

.method private isNetworkAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private static isTransientFailure(I)Z
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    .locals 4

    if-eqz p3, :cond_0

    const-string v1, "Mms:transaction"

    const-string v2, "launchTransaction: no network error!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchTransaction: sending message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private onNetworkUnavailable(II)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkUnavailable: sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v4, :cond_3

    const/4 v0, 0x2

    iput v5, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    return-void

    :cond_3
    if-ne p2, v5, :cond_1

    const/4 v0, 0x1

    iput v4, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.mms.intent.action.WAKE_LOCK_RELEASE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private renewMmsConnectivity()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private stopSelfIfIdle(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms:transaction"

    const-string v2, "stopSelfIfIdle: STOP!"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Mms:transaction"

    const-string v2, "stopSelfIfIdle: unRegisterForConnectionStateChanges"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected beginMmsConnectivity()I
    .locals 4

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->createWakeLock()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Mms:transaction"

    const-string v2, "beginMmsConnectivity called"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    const-string v3, "enableMMS"

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginMmsConnectivity: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    packed-switch v0, :pswitch_data_0

    const-string v1, "Mms:transaction"

    const-string v2, "StartUsingNetworkFeature Error!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->acquireWakeLock()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected endMmsConnectivity()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms:transaction"

    const-string v1, "endMmsConnectivity called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProcessing queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPending queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Mms:transaction"

    const-string v1, "stopUsingNetworkFeature called."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Mms:transaction"

    const-string v2, "Creating TransactionService"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TransactionService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    new-instance v1, Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;-><init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    new-instance v1, Lcom/android/common/NetworkConnectivityListener;

    invoke-direct {v1}, Lcom/android/common/NetworkConnectivityListener;-><init>()V

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/common/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    invoke-virtual {v1, p0}, Lcom/android/common/NetworkConnectivityListener;->startListening(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms:transaction"

    const-string v1, "Destroying TransactionService"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Mms:transaction"

    const-string v1, "TransactionService exiting with transaction still pending"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v0, v1}, Lcom/android/common/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    invoke-virtual {v0}, Lcom/android/common/NetworkConnectivityListener;->stopListening()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 15

    if-nez p1, :cond_0

    const/4 v12, 0x2

    :goto_0
    return v12

    :cond_0
    const-string v12, "connectivity"

    invoke-virtual {p0, v12}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    iput-object v12, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->isNetworkAvailable()Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v9, 0x1

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "Mms:transaction"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onStart: #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " intent="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Mms:transaction"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    networkAvailable="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-nez v9, :cond_3

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v12, "com.android.mms.intent.action.WAKE_LOCK_RELEASE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    const/4 v12, 0x2

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    const-string v12, "android.intent.action.ACTION_ONALARM"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    if-nez v12, :cond_10

    :cond_5
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_e

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, "Mms:transaction"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onStart: cursor.count="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-nez v5, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "Mms:transaction"

    const-string v13, "onStart: no pending messages. Stopping service."

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    const-string v12, "msg_id"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v12, "msg_type"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    if-eqz v9, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v12

    if-eqz v12, :cond_9

    const-string v12, "Mms:transaction"

    const-string v13, "onStart: registerForConnectionStateChanges"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;)V

    :cond_a
    :goto_3
    :pswitch_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v10

    if-eqz v9, :cond_b

    move/from16 v0, p3

    invoke-direct {p0, v0, v10}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v12, 0x2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_b
    packed-switch v10, :pswitch_data_0

    :cond_c
    :pswitch_1
    :try_start_2
    sget-object v12, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    new-instance v2, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v10, v12}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v12}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v12

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v12

    :pswitch_2
    :try_start_3
    const-string v12, "err_type"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->isTransientFailure(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v12

    if-nez v12, :cond_c

    goto :goto_3

    :cond_d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_4
    const/4 v12, 0x2

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v12

    if-eqz v12, :cond_f

    const-string v12, "Mms:transaction"

    const-string v13, "onStart: no pending messages. Stopping service."

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-static {p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    goto :goto_4

    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v12

    if-eqz v12, :cond_11

    const-string v12, "Mms:transaction"

    const-string v13, "onStart: launch transaction..."

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    new-instance v2, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-direct {v2, v12}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v9}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 12

    move-object v7, p1

    check-cast v7, Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v7}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "Mms:transaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update transaction "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "Mms:transaction"

    const-string v10, "update: handle next pending transaction..."

    invoke-static {v8, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v10, 0x4

    invoke-virtual {v7}, Lcom/android/mms/transaction/Transaction;->getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v8, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const-string v8, "state"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    packed-switch v4, :pswitch_data_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "Mms:transaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transaction state unknown: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "Mms:transaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update: broadcast transaction result "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/TransactionService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v7, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    return-void

    :cond_4
    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "Mms:transaction"

    const-string v10, "update: endMmsConnectivity"

    invoke-static {v8, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v8

    invoke-virtual {v7, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    throw v8

    :pswitch_0
    :try_start_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "Mms:transaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transaction complete: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v8, "uri"

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "GATE"

    const-string v9, "<GATE-M>MMS_MSG_RCVD</GATE-M>"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v0, :cond_9

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "GATE"

    const-string v9, "<GATE-M>MMS_MSG_RETRIEVED</GATE-M>"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    :cond_9
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "GATE"

    const-string v9, "<GATE-M>MMS_MSG_RETRIEVED</GATE-M>"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "GATE"

    const-string v9, "<GATE-M>MMS_MSG_SENT</GATE-M>"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/util/RateController;->update()V

    goto/16 :goto_1

    :pswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "Mms:transaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transaction failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
