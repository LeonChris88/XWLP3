.class final Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field private mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 4

    const-string v0, "CameraEngine"

    const-string v1, "JpegPictureCallback.onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-TakePicture**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-static {v0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->access$700(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;[BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/CameraEngine;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopObjectTracking()V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/CameraEngine;->access$900()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->forSetOrgFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->setLocation(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->resumeAudioPlayback()V

    goto :goto_0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->mLocation:Landroid/location/Location;

    return-void
.end method
