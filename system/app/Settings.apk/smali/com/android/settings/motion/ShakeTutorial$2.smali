.class Lcom/android/settings/motion/ShakeTutorial$2;
.super Landroid/os/Handler;
.source "ShakeTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/ShakeTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/ShakeTutorial;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/ShakeTutorial;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/ShakeTutorial$2;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "ShakeTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$2;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    invoke-static {v0, v3}, Lcom/android/settings/motion/ShakeTutorial;->access$102(Lcom/android/settings/motion/ShakeTutorial;Z)Z

    invoke-static {}, Lcom/android/settings/motion/ShakeTutorial;->access$200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/motion/ShakeTutorial;->access$200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$2;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    invoke-static {v1}, Lcom/android/settings/motion/ShakeTutorial;->access$300(Lcom/android/settings/motion/ShakeTutorial;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$2;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    invoke-static {v0}, Lcom/android/settings/motion/ShakeTutorial;->access$400(Lcom/android/settings/motion/ShakeTutorial;)Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialProgressCategory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialProgressCategory;->setProgress(Z)V

    const/16 v0, 0x1e1

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/motion/ShakeTutorial$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$2;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    invoke-static {v0}, Lcom/android/settings/motion/ShakeTutorial;->access$500(Lcom/android/settings/motion/ShakeTutorial;)V

    const/16 v0, 0x1e2

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/motion/ShakeTutorial$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$2;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    invoke-static {v0}, Lcom/android/settings/motion/ShakeTutorial;->access$600(Lcom/android/settings/motion/ShakeTutorial;)V

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$2;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    invoke-static {v0}, Lcom/android/settings/motion/ShakeTutorial;->access$400(Lcom/android/settings/motion/ShakeTutorial;)Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialProgressCategory;->setProgress(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1e0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
