.class Lcom/android/mms/transaction/IMEITrackerService$1;
.super Landroid/content/BroadcastReceiver;
.source "IMEITrackerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/IMEITrackerService;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/IMEITrackerService;

.field final synthetic val$IMEITrackermessage:Ljava/lang/String;

.field final synthetic val$IMEITrackerserverNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/IMEITrackerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iput-object p2, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->val$IMEITrackerserverNo:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->val$IMEITrackermessage:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/mms/transaction/IMEITrackerService$1;->getResultCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v1, "IMEITrackerService"

    const-string v2, "sendSMSPass"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    invoke-virtual {v1}, Lcom/android/mms/transaction/IMEITrackerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    sget-object v2, Lcom/android/mms/transaction/IMEITrackerService;->IMSI_new:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mms/transaction/IMEITrackerService;->access$500(Lcom/android/mms/transaction/IMEITrackerService;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "IMEITrackerService"

    const-string v2, "sendSMSFail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v2, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->val$IMEITrackerserverNo:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->val$IMEITrackermessage:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/mms/transaction/IMEITrackerService;->access$400(Lcom/android/mms/transaction/IMEITrackerService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
