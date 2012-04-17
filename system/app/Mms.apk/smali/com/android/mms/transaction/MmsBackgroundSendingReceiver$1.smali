.class Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$1;
.super Ljava/lang/Thread;
.source "MmsBackgroundSendingReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$1;->this$0:Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$1;->this$0:Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;

    iget-object v2, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$1;->this$0:Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;

    invoke-static {v2}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->access$100(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->access$002(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;Lcom/google/android/mms/pdu/PduPersister;)Lcom/google/android/mms/pdu/PduPersister;

    iget-object v1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$1;->this$0:Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;

    invoke-static {v1}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->access$000(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$1;->this$0:Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;

    invoke-static {v1}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->access$200(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$1;->this$0:Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;

    invoke-static {v1}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->access$300(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
