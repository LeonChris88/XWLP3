.class Lcom/android/mms/ui/SelectMapActivity$4;
.super Landroid/os/Handler;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/mms/ui/SelectMapActivity;->access$402(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SelectMapActivity;->access$400(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SelectMapActivity;->access$500(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SelectMapActivity;->access$400(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SelectMapActivity;->access$500(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SelectMapActivity;->access$400(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SelectMapActivity;->access$000(Lcom/android/mms/ui/SelectMapActivity;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SelectMapActivity;->access$600(Lcom/android/mms/ui/SelectMapActivity;)Landroid/location/LocationManager;

    move-result-object v0

    const-wide/16 v2, 0x2710

    const/high16 v4, 0x42c8

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v5, v5, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
