.class Lcom/android/mms/transaction/IMEITrackerService$2;
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


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/IMEITrackerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/IMEITrackerService$2;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/transaction/IMEITrackerService$2;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "IMEITrackerService"

    const-string v1, "sendSMSDelivered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/transaction/IMEITrackerService$2;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    sget-object v1, Lcom/android/mms/transaction/IMEITrackerService;->IMSI_new:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/transaction/IMEITrackerService;->access$500(Lcom/android/mms/transaction/IMEITrackerService;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "IMEITrackerService"

    const-string v1, "sendSMSNotDelivered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
