.class Lcom/android/settings/deviceinfo/UsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$100(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    return-void
.end method
