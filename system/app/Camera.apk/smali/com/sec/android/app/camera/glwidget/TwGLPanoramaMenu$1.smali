.class Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$1;
.super Landroid/os/Handler;
.source "TwGLPanoramaMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "Inactivity timer is expired. finish."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;)Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;->onPanoramaCaptureCancelled()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
