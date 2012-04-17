.class public Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;
.super Landroid/app/Service;
.source "PowerSavingModeWidgetBatteryService.java"


# instance fields
.field mBRBattery:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;->mBRBattery:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;->mBRBattery:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;->mBRBattery:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    return v1
.end method
