.class Lcom/android/mms/ui/SlideshowActivity$2;
.super Landroid/telephony/PhoneStateListener;
.source "SlideshowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->access$202(Lcom/android/mms/ui/SlideshowActivity;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->access$300(Lcom/android/mms/ui/SlideshowActivity;Z)V

    :cond_0
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "PhoneStateListener Off Call"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->access$202(Lcom/android/mms/ui/SlideshowActivity;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->access$300(Lcom/android/mms/ui/SlideshowActivity;Z)V

    :cond_1
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "PhoneStateListener On Call"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
