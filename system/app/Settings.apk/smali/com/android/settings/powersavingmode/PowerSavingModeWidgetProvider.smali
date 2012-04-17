.class public Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static mContext:Landroid/content/Context;

.field private static mIsAirplaneModeOn:I

.field private static mIsBatteryStateLow:I

.field private static mIsfirstPanel:Z

.field private static mRP:Landroid/app/enterprise/IRestrictionPolicy;

.field private static final sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

.field private static final sGpsState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private static sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

.field private static final sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.powersavingmode.PowerSavingModeWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    sput-object v3, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsfirstPanel:Z

    sput v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsAirplaneModeOn:I

    sput v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsBatteryStateLow:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$500()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 0

    sput-object p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040064

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f08011b

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f08011f

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f080123

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f08012c

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f080135

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f080127

    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f08012f

    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.powersavingmode.PowerSavingModeTips"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f080132

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    return-object v0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;->startObserving()V

    :cond_0
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const-string v4, "powersaving modewidget provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightness brightness= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    :goto_0
    return v1

    :catch_0
    move-exception v2

    const-string v4, "PowerSavingModeWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightness: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "PowerSavingModeWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightnessMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static getScreentimeout(Landroid/content/Context;)I
    .locals 5

    const/16 v1, 0x7530

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "PowerSavingModeWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreentimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSync(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public static setBatteryState(I)V
    .locals 0

    sput p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsBatteryStateLow:I

    return-void
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    sget-object v5, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    if-nez v5, :cond_0

    const-string v5, "restriction_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v5

    sput-object v5, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    :cond_0
    sget-object v5, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    sget v5, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsBatteryStateLow:I

    if-ne v5, v7, :cond_3

    const-string v5, "PowerSavingModeWidgetProvider"

    const-string v6, "Battery Level is critical low "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v5, "PowerSavingModeWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_brightness"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    :cond_4
    if-ne v1, v7, :cond_5

    const/16 v0, 0x1e

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    if-nez v1, :cond_1

    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    const-string v5, "PowerSavingModeWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0x66

    if-ge v0, v5, :cond_6

    const/16 v0, 0x66

    goto :goto_1

    :cond_6
    const/16 v5, 0xff

    if-ge v0, v5, :cond_7

    const/16 v0, 0xff

    goto :goto_1

    :cond_7
    const/4 v1, 0x1

    const/16 v0, 0x1e

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private toogleScreentimeout(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    if-nez v4, :cond_0

    const-string v4, "restriction_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v4

    sput-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    :cond_0
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mRP:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getScreentimeout(Landroid/content/Context;)I

    move-result v2

    const/4 v4, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    const/4 v1, 0x0

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget v4, v3, v1

    if-ne v2, v4, :cond_3

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    add-int/lit8 v6, v1, 0x1

    aget v6, v3, v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :array_0
    .array-data 0x4
        0x98t 0x3at 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t
        0xe0t 0x93t 0x4t 0x0t
        0xc0t 0x27t 0x9t 0x0t
    .end array-data
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 9

    const v8, 0x7f020111

    const v7, 0x7f020110

    const v6, 0x7f0a000e

    const/4 v5, 0x0

    const v4, 0x7f0a000d

    const v1, 0x7f08011b

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f08011f

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f080123

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f080135

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f080127

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f08012f

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f080132

    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget-object v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtons() : WiFi state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f08012d

    const v2, 0x7f0200b7

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f08012e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :goto_1
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getSync(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f080128

    const v2, 0x7f0200d2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f080129

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v1, 0x7f08012a

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_2
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getGpsState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f080124

    const v2, 0x7f0200c2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f080125

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v1, 0x7f080126

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsAirplaneModeOn:I

    sget v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsAirplaneModeOn:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const v1, 0x7f080120

    const v2, 0x7f0200b5

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f080121

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v1, 0x7f080122

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_4
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getScreentimeout(Landroid/content/Context;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtons() : screentimeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const v1, 0x7f080131

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void

    :pswitch_1
    const v1, 0x7f08011c

    const v2, 0x7f0200d5

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f08011d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v1, 0x7f08011e

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    :pswitch_2
    const v1, 0x7f08011c

    const v2, 0x7f0200d6

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f08011d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v1, 0x7f08011e

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08011c

    const v2, 0x7f0200d6

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f08011d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v1, 0x7f08011e

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    :cond_0
    const v1, 0x7f08011c

    const v2, 0x7f0200d5

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f08011d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v1, 0x7f08011e

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const v1, 0x7f08012d

    const v2, 0x7f0200bf

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f08012e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x66

    if-lt v1, v2, :cond_3

    const v1, 0x7f08012d

    const v2, 0x7f0200be

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f08012e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_1

    :cond_3
    const v1, 0x7f08012d

    const v2, 0x7f0200bb

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f08012e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_1

    :cond_4
    const v1, 0x7f080128

    const v2, 0x7f0200d1

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f080129

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v1, 0x7f08012a

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    :cond_5
    const v1, 0x7f080124

    const v2, 0x7f0200c1

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f080125

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v1, 0x7f080126

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    :cond_6
    sget-object v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :pswitch_4
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtons() : BT state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_5
    const v1, 0x7f080120

    const v2, 0x7f0200b5

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f080121

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v1, 0x7f080122

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4

    :pswitch_6
    const v1, 0x7f080120

    const v2, 0x7f0200b6

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f080121

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v1, 0x7f080122

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4

    :pswitch_7
    sget-object v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f080120

    const v2, 0x7f0200b6

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f080121

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v1, 0x7f080122

    invoke-virtual {p0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4

    :cond_7
    const v1, 0x7f080120

    const v2, 0x7f0200b5

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f080121

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v1, 0x7f080122

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4

    :sswitch_0
    const v1, 0x7f080130

    const v2, 0x7f0200c9

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    :sswitch_1
    const v1, 0x7f080130

    const v2, 0x7f0200cc

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    :sswitch_2
    const v1, 0x7f080130

    const v2, 0x7f0200ca

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    :sswitch_3
    const v1, 0x7f080130

    const v2, 0x7f0200cb

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    :sswitch_4
    const v1, 0x7f080130

    const v2, 0x7f0200cd

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    :sswitch_5
    const v1, 0x7f080130

    const v2, 0x7f0200c8

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3a98 -> :sswitch_0
        0x7530 -> :sswitch_1
        0xea60 -> :sswitch_2
        0x1d4c0 -> :sswitch_3
        0x493e0 -> :sswitch_4
        0x927c0 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sget-object v2, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    invoke-static {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->checkObserver(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".powersavingmode.PowerSavingModeWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;->stopObserving()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSettingsObserver:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SettingsObserver;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".powersavingmode.PowerSavingModeWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->checkObserver(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetBatteryService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v4, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v4, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v4, "android.settings.BRIGHTNESS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    :cond_7
    const-string v4, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    :cond_8
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    :cond_9
    const-string v4, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_a

    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x2

    if-ne v1, v4, :cond_c

    sget v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsAirplaneModeOn:I

    if-ne v4, v5, :cond_b

    const v4, 0x7f0b0243

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_b
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x3

    if-ne v1, v4, :cond_d

    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_d
    const/4 v4, 0x4

    if-ne v1, v4, :cond_e

    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_e
    const/4 v4, 0x5

    if-ne v1, v4, :cond_f

    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_f
    const/4 v4, 0x6

    if-ne v1, v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->toogleScreentimeout(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED_FROM_WIDGET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
