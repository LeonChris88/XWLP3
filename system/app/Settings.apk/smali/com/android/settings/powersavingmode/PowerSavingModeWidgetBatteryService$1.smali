.class Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSavingModeWidgetBatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v2, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;

    invoke-direct {v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "PowerSavingModeWidgetBatteryService"

    const-string v4, "receive Intent.ACTION_BATTERY_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "level"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_2

    const-string v3, "status"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-static {v5}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->setBatteryState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "PowerSavingModeWidgetBatteryService"

    const-string v4, "critical low battery level"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->setBatteryState(I)V

    goto :goto_0

    :cond_2
    invoke-static {v5}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->setBatteryState(I)V

    goto :goto_0
.end method
