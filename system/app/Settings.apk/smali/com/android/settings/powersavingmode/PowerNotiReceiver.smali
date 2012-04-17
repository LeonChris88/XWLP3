.class public Lcom/android/settings/powersavingmode/PowerNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotiReceiver.java"


# static fields
.field private static is_siop_cpu:Z

.field private static is_siop_uirendering:Z

.field private static mCharging:Z


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mNotificationMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mCharging:Z

    sput-boolean v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_cpu:Z

    sput-boolean v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_uirendering:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private adjustBrightness()V
    .locals 10

    const/4 v9, 0x0

    const-wide v7, 0x406fe00000000000L

    const-wide/high16 v5, 0x4059

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_brightness"

    invoke-static {v2, v3, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_brightness_level"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    int-to-double v2, v0

    div-double/2addr v2, v5

    mul-double/2addr v2, v7

    double-to-int v1, v2

    :goto_0
    const-string v2, "PowerNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PSM_brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "set_brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v9, v1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doAdjustBrightness(II)V

    :cond_0
    return-void

    :cond_1
    int-to-double v2, v0

    div-double/2addr v2, v5

    mul-double/2addr v2, v7

    const-wide/high16 v4, 0x4024

    add-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_0
.end method

.method private adjustScreentimeout()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_screen_timeout"

    const/16 v3, 0x3a98

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doAdjustScreentimeout(I)V

    return-void
.end method

.method private clearNotification()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private clearSystemNotification()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private doAdjustBrightness(II)V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, p2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.BRIGHTNESS_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doAdjustScreentimeout(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private doPowerSaveAction(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->stopWifi()V

    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->stopBluetooth()V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->stopGps(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->stopSync(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->adjustBrightness()V

    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->adjustScreentimeout()V

    return-void
.end method

.method private showNotification(I)V
    .locals 13

    const v12, 0x7f0b0797

    const/16 v4, 0x97

    const/4 v11, 0x1

    const/4 v10, 0x0

    iput p1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mNotificationMode:I

    const-string v0, "PowerNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNotificationMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mNotificationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v5, 0x7f02005f

    const-string v3, ""

    const-string v2, ""

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "psm_battery_level"

    const/16 v7, 0x1e

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v7, "powernotirecevier jusok"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPowerManager.getPlugType()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/os/PowerManager;->getPlugType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/PowerManager;->getPlugType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager;->getPlugType()I

    move-result v1

    if-ne v1, v11, :cond_1

    :cond_0
    move p1, v4

    :cond_1
    const/16 v1, 0x96

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0798

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v10

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v3, Landroid/app/Notification;

    const-wide/16 v6, 0x0

    invoke-direct {v3, v5, v2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v2, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v3, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0785

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/settings/Settings$MenuPowerSavingModeSettingsActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5, v10, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v2, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v11, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_2
    if-ne p1, v4, :cond_3

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0799

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b079a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/16 v1, 0x98

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b079b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v2

    move-object v2, v3

    goto :goto_0
.end method

.method private showSystemNotification()V
    .locals 9

    const v8, 0x7f0b077d

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f02005f

    const-string v2, ""

    const-string v2, ""

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b077f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/Notification;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v1, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v4, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/settings/Settings$MenuPowerSavingModeSettingsActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private stopBluetooth()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_bluetooth"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PowerNotiReceiver"

    const-string v2, "doAction : disableBluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "PowerNotiReceiver"

    const-string v2, "Not disable Bluetooth because it\'s being used"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "PowerNotiReceiver"

    const-string v2, "PSM_BLUETOOTH = psm_bluetooth, do not disable Bluetooth because PSM_BLUETOOTH is unchecked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopGps(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_gps"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isGpsRunning()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PowerNotiReceiver"

    const-string v3, "doAction : disableGPS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.GPS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "PowerNotiReceiver"

    const-string v3, "Not disable Gps because it\'s being used"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "PowerNotiReceiver"

    const-string v3, "PSM_GPS = psm_gps, do not disable Gps because PSM_GPS is unchecked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopSync(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_sync"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    invoke-static {v6}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "PowerNotiReceiver"

    const-string v5, "Not disable Auto Sync because it\'s being used"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "PowerNotiReceiver"

    const-string v5, "PSM_SYNC = psm_sync, do not disable Auto Sync because PSM_SYNC is unchecked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopWifi()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_wifi"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    const-string v4, "PowerNotiReceiver"

    const-string v5, "doAction : disableWifi"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :goto_0
    return-void

    :cond_0
    const-string v4, "PowerNotiReceiver"

    const-string v5, "Not disable Wifi because it\'s connected to AP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v4, "PowerNotiReceiver"

    const-string v5, "PSM_WIFI = psm_wifi, do not disable Wifi because PSM_WIFI is unchecked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatemaximumpowersaving(Z)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sget-boolean v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_cpu:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v2

    aget v2, v2, v4

    const-string v3, "PowerNotiReceiver"

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/os/PowerManager;->acquirePersistentDVFSLock(IIILjava/lang/String;)V

    :cond_0
    sget-boolean v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_uirendering:Z

    if-nez v1, :cond_1

    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setPowerSaveFPS(Z)V

    :cond_1
    invoke-virtual {v0, v4}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sget-boolean v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_cpu:Z

    if-nez v1, :cond_3

    invoke-virtual {v0, v4}, Landroid/os/PowerManager;->releasePersistentDVFSLock(I)V

    :cond_3
    sget-boolean v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_uirendering:Z

    if-nez v1, :cond_4

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setPowerSaveFPS(Z)V

    :cond_4
    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    goto :goto_0
.end method


# virtual methods
.method public isGpsRunning()Z
    .locals 3

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isGpsRunning()Z

    move-result v1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/16 v11, 0x97

    const/16 v10, 0x96

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "PowerNotiReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PowerNotiReceiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.settings.ACTION_POWERSAVINGBATTERYLEVELCHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.settings.SYSTEMPOWERSAVING_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "use_power_saving_mode"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "PowerNotiReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getPlugType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    invoke-virtual {v2}, Landroid/os/PowerManager;->getPlugType()I

    move-result v5

    if-ne v5, v9, :cond_2

    :cond_1
    sput-boolean v9, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mCharging:Z

    :cond_2
    if-eqz v1, :cond_5

    sget-boolean v5, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mCharging:Z

    if-eqz v5, :cond_4

    invoke-direct {p0, v11}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    :goto_0
    const-string v5, "maximum_power_saving"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "PowerNotiReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maximumpowersavingmode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showSystemNotification()V

    :goto_1
    const-string v5, "pref_siop_clock"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_cpu:Z

    const-string v5, "pref_siop_rendering"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_uirendering:Z

    invoke-direct {p0, v3}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->updatemaximumpowersaving(Z)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-direct {p0, v10}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->clearNotification()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->clearSystemNotification()V

    goto :goto_1

    :cond_7
    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "use_power_saving_mode"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v9, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mCharging:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v11}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    goto :goto_2

    :cond_8
    const-string v5, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "use_power_saving_mode"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v8, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mCharging:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v10}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    goto :goto_2

    :cond_9
    const-string v5, "android.settings.ACTION_POWERSAVING"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction(Landroid/content/Context;)V

    const/16 v5, 0x98

    invoke-direct {p0, v5}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->showNotification(I)V

    goto :goto_2

    :cond_a
    const-string v5, "android.intent.action.POWER_SIOP_DISABLE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "maximum_power_saving"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v8, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_cpu:Z

    sput-boolean v8, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->is_siop_uirendering:Z

    invoke-direct {p0, v1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->updatemaximumpowersaving(Z)V

    goto :goto_2
.end method
