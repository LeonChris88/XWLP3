.class Lcom/android/server/MountService$DirEncryptListner;
.super Landroid/os/storage/IDirEncryptServiceListener$Stub;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirEncryptListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/os/storage/IDirEncryptServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEncryptionStatusChanged: operation = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/mnt/sdcard/external_sd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "done"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    invoke-static {v1}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v1

    const-string v2, "volume mount %s moveMount"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "/mnt/sdcard/external_sd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "batch_fail"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "batch_no_fs"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    const-string v2, "nofs"

    invoke-static {v1, p1, v2}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_NOFS"

    iget-object v1, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    invoke-static {v1, v0, p1}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "/mnt/sdcard/external_sd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "batch_done"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    const-string v2, "decrypt"

    invoke-static {v1, p1, v2}, Lcom/android/server/MountService;->access$3800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v1, "/mnt/sdcard/external_sd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "batch_start"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    const-string v2, "crypto"

    invoke-static {v1, v2, p1, v4, v5}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    const-string v2, "crypto"

    invoke-static {v1, v2, p1, v5, v4}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method
