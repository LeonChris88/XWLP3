.class Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1$1;
.super Ljava/lang/Thread;
.source "DeviceStorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1$1;->this$2:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    :try_start_0
    const-string v4, "DeviceStorageUtil"

    const-string v5, "Let\'s try to format it!!!"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1$1;->this$2:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;

    iget-object v4, v4, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;->this$1:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;

    invoke-static {v4}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->access$200(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1$1;->this$2:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;

    iget-object v4, v4, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;->this$1:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->success:Z

    const-string v4, "DeviceStorageUtil"

    const-string v5, "SDcard is formatted successfully :-)"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1$1;->this$2:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;

    iget-object v4, v4, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;->this$1:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;

    iget-boolean v4, v4, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->isPreMounted:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1$1;->this$2:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;

    iget-object v4, v4, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;->this$1:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;

    invoke-static {v4}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->access$300(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v4, "DeviceStorageUtil"

    const-string v5, "Unable to mount SDcard. :-("

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "DeviceStorageUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Oops!!! Unable to format media - error code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "DeviceStorageUtil"

    const-string v5, "Unable to invoke IMountService.formatMedia()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
