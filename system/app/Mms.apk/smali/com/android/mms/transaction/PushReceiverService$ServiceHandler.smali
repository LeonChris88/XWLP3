.class final Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "PushReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/PushReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/PushReceiverService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/PushReceiverService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/PushReceiverService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const-string v4, "Mms/PushReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage. msg= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    const-string v4, "data"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Lcom/android/mms/transaction/WapPushMessage;

    invoke-direct {v3}, Lcom/android/mms/transaction/WapPushMessage;-><init>()V

    :try_start_0
    const-string v4, "Mms/PushReceiverService"

    const-string v5, "parse userData."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/android/mms/transaction/WapPushMessage;->parse([B)V

    const-string v4, "Mms/PushReceiverService"

    invoke-virtual {v3}, Lcom/android/mms/transaction/WapPushMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    const-string v4, "Mms/PushReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported protocol. publicID= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v4, "Mms/PushReceiverService"

    const-string v5, "Fail to parse WAP Push message."

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/PushReceiverService;

    invoke-static {v4, v3}, Lcom/android/mms/transaction/PushReceiverService;->access$400(Lcom/android/mms/transaction/PushReceiverService;Lcom/android/mms/transaction/WapPushMessage;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/PushReceiverService;

    invoke-static {v4, v3}, Lcom/android/mms/transaction/PushReceiverService;->access$500(Lcom/android/mms/transaction/PushReceiverService;Lcom/android/mms/transaction/WapPushMessage;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
