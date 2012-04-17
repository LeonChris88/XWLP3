.class Lcom/sec/android/app/camera/CamcorderEngine$3;
.super Ljava/lang/Object;
.source "CamcorderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderEngine;->doStartVideoRecordingAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, -0x4

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->access$400(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "CamcorderEngine"

    const-string v2, "SecMediaRecorder is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->access$502(Lcom/sec/android/app/camera/CamcorderEngine;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->access$600(Lcom/sec/android/app/camera/CamcorderEngine;)V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->access$400(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CamcorderEngine"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
