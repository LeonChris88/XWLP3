.class Lcom/sec/android/app/camera/CameraEngine$CameraPreviewCallback;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$CameraPreviewCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 0

    return-void
.end method
