.class Lcom/sec/android/app/camera/CropImage$4;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CropImage;->startFaceDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage;->access$100(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage;->access$100(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    const/4 v4, -0x1

    const/high16 v5, 0x10

    invoke-interface {v3, v4, v5}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage;->access$400(Lcom/sec/android/app/camera/CropImage;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/CropImage$4$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/sec/android/app/camera/CropImage$4$1;-><init>(Lcom/sec/android/app/camera/CropImage$4;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
