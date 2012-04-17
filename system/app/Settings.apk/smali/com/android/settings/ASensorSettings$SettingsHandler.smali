.class Lcom/android/settings/ASensorSettings$SettingsHandler;
.super Landroid/os/Handler;
.source "ASensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ASensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ASensorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ASensorSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ASensorSettings;Lcom/android/settings/ASensorSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ASensorSettings$SettingsHandler;-><init>(Lcom/android/settings/ASensorSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/high16 v4, 0x4220

    const-wide/16 v8, 0x32

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    new-array v1, v6, [F

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$1000(Lcom/android/settings/ASensorSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0b06dd

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getPoint([F)[F

    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->access$200(Lcom/android/settings/ASensorSettings$ASensorSettingsView;I)V

    aget v2, v1, v7

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    sput v2, Lcom/android/settings/ASensorSettings;->mAniGapX:F

    aget v2, v1, v5

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    sput v2, Lcom/android/settings/ASensorSettings;->mAniGapY:F

    const/16 v2, 0x28

    sput v2, Lcom/android/settings/ASensorSettings;->mAniCount:I

    iput v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/settings/ASensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p0, v5}, Lcom/android/settings/ASensorSettings$SettingsHandler;->removeMessages(I)V

    goto :goto_0

    :pswitch_1
    sget v2, Lcom/android/settings/ASensorSettings;->mAniCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/android/settings/ASensorSettings;->mAniCount:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    sget v3, Lcom/android/settings/ASensorSettings;->mAniGapX:F

    sget v4, Lcom/android/settings/ASensorSettings;->mAniCount:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sget v4, Lcom/android/settings/ASensorSettings;->mAniGapY:F

    neg-float v4, v4

    sget v5, Lcom/android/settings/ASensorSettings;->mAniCount:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->setPoint(FF)V

    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->invalidate()V

    invoke-virtual {p0, v6}, Lcom/android/settings/ASensorSettings$SettingsHandler;->removeMessages(I)V

    iput v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/settings/ASensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/settings/ASensorSettings$SettingsHandler;->removeMessages(I)V

    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/settings/ASensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/16 v2, 0x28

    sput v2, Lcom/android/settings/ASensorSettings;->mAniCount:I

    goto/16 :goto_0

    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/settings/ASensorSettings$SettingsHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$1100(Lcom/android/settings/ASensorSettings;)Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->runAccCalibration(I)I

    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$1100(Lcom/android/settings/ASensorSettings;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    iget-object v3, v3, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$SensorHandler;

    iget-object v4, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-static {v4}, Lcom/android/settings/ASensorSettings;->access$1200(Lcom/android/settings/ASensorSettings;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    invoke-static {v7}, Lcom/android/settings/ASensorSettings;->access$302(I)I

    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->access$200(Lcom/android/settings/ASensorSettings$ASensorSettingsView;I)V

    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$1000(Lcom/android/settings/ASensorSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0b06dc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$1300(Lcom/android/settings/ASensorSettings;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
