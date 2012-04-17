.class Lcom/android/settings/GSensorSettings$SettingsHandler;
.super Landroid/os/Handler;
.source "GSensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/GSensorSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GSensorSettings;Lcom/android/settings/GSensorSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/GSensorSettings$SettingsHandler;-><init>(Lcom/android/settings/GSensorSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v10, 0x0

    const/high16 v9, 0x4248

    const-wide/16 v7, 0x32

    const/4 v6, 0x1

    const/4 v5, 0x2

    new-array v1, v5, [F

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$800(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0b06d6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getPoint([F)[F

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    aget v3, v1, v10

    iget-object v4, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v4}, Lcom/android/settings/GSensorSettings;->access$300(Lcom/android/settings/GSensorSettings;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v9

    sput v3, Lcom/android/settings/GSensorSettings;->mAniGapX:F

    aget v3, v1, v6

    iget-object v4, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v4}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v9

    sput v3, Lcom/android/settings/GSensorSettings;->mAniGapY:F

    const/16 v3, 0x32

    sput v3, Lcom/android/settings/GSensorSettings;->mAniCount:I

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v3

    sget v4, Lcom/android/settings/GSensorSettings;->mAniCount:I

    invoke-virtual {v3, v4}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->setImage(I)V

    iput v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v7, v8}, Lcom/android/settings/GSensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p0, v6}, Lcom/android/settings/GSensorSettings$SettingsHandler;->removeMessages(I)V

    goto :goto_0

    :pswitch_1
    sget v3, Lcom/android/settings/GSensorSettings;->mAniCount:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/android/settings/GSensorSettings;->mAniCount:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v3

    sget v4, Lcom/android/settings/GSensorSettings;->mAniCount:I

    invoke-virtual {v3, v4}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->setImage(I)V

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->invalidate()V

    invoke-virtual {p0, v5}, Lcom/android/settings/GSensorSettings$SettingsHandler;->removeMessages(I)V

    iput v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v7, v8}, Lcom/android/settings/GSensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/GSensorSettings$SettingsHandler;->removeMessages(I)V

    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v7, v8}, Lcom/android/settings/GSensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/16 v3, 0x32

    sput v3, Lcom/android/settings/GSensorSettings;->mAniCount:I

    goto/16 :goto_0

    :pswitch_2
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/settings/GSensorSettings$SettingsHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$1000(Lcom/android/settings/GSensorSettings;)Landroid/hardware/SensorManager;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->runGyroCalibration(I)I

    move-result v2

    invoke-static {v10}, Lcom/android/settings/GSensorSettings;->access$1102(I)I

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->invalidate()V

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$800(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0b06d5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$1200(Lcom/android/settings/GSensorSettings;)V

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/GSensorSettings$SettingsHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
