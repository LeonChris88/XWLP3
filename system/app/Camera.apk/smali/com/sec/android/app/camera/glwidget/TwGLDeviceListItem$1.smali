.class Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$1;
.super Ljava/util/TimerTask;
.source "TwGLDeviceListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->animationAfterClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;

    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;

    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;

    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    sget v4, Lcom/sec/android/app/camera/Camera;->ACTIVE_REQUEST_TIMEOUT:I

    iput v4, v2, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;

    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Lcom/samsung/shareshot/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;

    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/Camera$UserWrapper;->searchUser(Ljava/lang/String;)Lcom/samsung/shareshot/User;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v4

    if-nez v4, :cond_0

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;

    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Lcom/samsung/shareshot/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/shareshot/User;->onUnSelected()V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;

    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;

    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Lcom/samsung/shareshot/User;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/Camera$UserWrapper;->selectUser(Lcom/samsung/shareshot/User;Z)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;

    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
