.class Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceFoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 8

    const-string v5, "android.bluetooth.device.extra.RSSI"

    const/16 v6, -0x8000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v4

    const-string v5, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothClass;

    const-string v5, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1000(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v7}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    invoke-virtual {v5, v6, v7, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    const-string v5, "BluetoothEventManager"

    const-string v6, "DeviceFoundHandler created new CachedBluetoothDevice: "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v5, v2}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1400(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    :cond_0
    invoke-virtual {v2, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_1

    if-eq v3, v0, :cond_1

    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    return-void

    :cond_1
    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method
