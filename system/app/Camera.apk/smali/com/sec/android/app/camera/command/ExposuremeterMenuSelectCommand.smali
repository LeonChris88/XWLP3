.class public Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "ExposuremeterMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExposuremeterMenuSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mExposureMeter:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;->mExposureMeter:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;->mExposureMeter:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;->mExposureMeter:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4b0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ExposuremeterMenuSelectCommand"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ExposuremeterMenuSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ExposuremeterMenuSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;->mExposureMeter:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onExposuremeterMenuSelect(I)V

    iget v0, p0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;->mZOrder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method
