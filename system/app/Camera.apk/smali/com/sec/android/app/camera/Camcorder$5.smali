.class Lcom/sec/android/app/camera/Camcorder$5;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camcorder;->startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$1500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->isPreviewStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$2400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/RecordingData;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$1500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getOrientationOnTake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->calculateOrientationForPicture(I)I

    move-result v0

    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPostCaptureAnimation - OrientationForPicture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$1500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camcorder;->access$2400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/RecordingData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/RecordingData;->getRecordingData()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$2400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/RecordingData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/Camcorder;->access$2402(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/RecordingData;)Lcom/sec/android/app/camera/RecordingData;

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$2500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/glview/TwGLAniViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camcorder;->access$2500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/glview/TwGLAniViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$2500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/glview/TwGLAniViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/Camcorder;->access$2502(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/glview/TwGLAniViewGroup;)Lcom/sec/android/glview/TwGLAniViewGroup;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xffff -> :sswitch_1
    .end sparse-switch
.end method
