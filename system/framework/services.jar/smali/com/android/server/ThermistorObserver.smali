.class Lcom/android/server/ThermistorObserver;
.super Landroid/os/UEventObserver;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThermistorObserver$ThermistorReceiver;,
        Lcom/android/server/ThermistorObserver$TestIntent;,
        Lcom/android/server/ThermistorObserver$TmuState;,
        Lcom/android/server/ThermistorObserver$ThermistorState;
    }
.end annotation


# static fields
.field public static final ACTION_LIMIT_BRIGHTNESS:Ljava/lang/String; = "ThermistorObserver.action.LIMIT_BRIGHTNESS"

.field public static final ACTION_POWER_SIOP_DISABLE:Ljava/lang/String; = "android.intent.action.POWER_SIOP_DISABLE"

.field public static final ACTION_POWER_SIOP_ENABLE:Ljava/lang/String; = "android.intent.action.POWER_SIOP_ENABLE"

.field private static final BATT_CHARGING_HYSTERESYS_LOWER:I = 0x14

.field private static final BATT_CHARGING_HYSTERESYS_UPPER:I = 0x19

.field private static final BATT_MAX_CHARGING_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/siop_activated"

.field private static final BRIGHTNESS_LIMIT_VALUE:I = 0xbb

.field private static final BRIGHTNESS_NORMAL_VALUE:I = 0xff

.field public static final EXTRA_LIMIT_BRIGHTNESS:Ljava/lang/String; = "ThermistorObserver.extra.LIMIT_BRIGHTNESS"

.field public static final EXTRA_POWER_SIOP_ENABLE_CPU_CLOCK:Ljava/lang/String; = "cpu_clock"

.field public static final EXTRA_POWER_SIOP_ENABLE_MAX_BRIGHTNESS:Ljava/lang/String; = "max_brightness"

.field public static final EXTRA_POWER_SIOP_ENABLE_UI_RENDERING:Ljava/lang/String; = "ui_rendering"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = null

.field private static final THERMISTOR_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/platform/sec-thermistor"

.field private static final TMU_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/platform/s5p-tmu"

.field private static final mConfigurableControlCondition:Z = true

.field private static mControlConditionStopTemperature:I

.field private static final mDebugLog:Z

.field private static final mDebugLogTestApp:Z


# instance fields
.field private mBatteryBR:Landroid/content/BroadcastReceiver;

.field private mBatteryBRForAMOLED:Landroid/content/BroadcastReceiver;

.field private mBoolAMOLED:Z

.field private mBoolControlBrightness:Z

.field private mBoolControlChargingCurrent:Z

.field private mBoolControlFrequency:Z

.field private mBoolControlRenderingFPS:Z

.field private mBoolCurrentLimitBrightness:Z

.field private mBoolSupportSIOP:Z

.field private final mContext:Landroid/content/Context;

.field private mControlCondition:[[I

.field private mCurrTemperature:I

.field private mDVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

.field mDateFormat:Ljava/text/SimpleDateFormat;

.field private mFormattedGoalTime:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIntentSIOPDisable:Landroid/content/Intent;

.field private mIntentSIOPEnable:Landroid/content/Intent;

.field private mIsChargingCurrentLimited:Z

.field private mLatestBatteryLevel:I

.field private mPM:Landroid/os/PowerManager;

.field private mPowerManager:Lcom/android/server/PowerManagerService;

.field private mSystemReady:Z

.field private mThermistorState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/ThermistorObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const/16 v0, 0x1e0

    sput v0, Lcom/android/server/ThermistorObserver;->mControlConditionStopTemperature:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    iput-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mSystemReady:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    iput-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    iput-boolean v4, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    iput-boolean v4, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    iput-boolean v4, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    iput-boolean v4, p0, Lcom/android/server/ThermistorObserver;->mBoolControlRenderingFPS:Z

    iput-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mBoolSupportSIOP:Z

    iput-boolean v4, p0, Lcom/android/server/ThermistorObserver;->mBoolAMOLED:Z

    iput-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mBoolCurrentLimitBrightness:Z

    new-array v1, v7, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v3

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v4

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.POWER_SIOP_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mIntentSIOPEnable:Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.POWER_SIOP_DISABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mIntentSIOPDisable:Landroid/content/Intent;

    iput v3, p0, Lcom/android/server/ThermistorObserver;->mThermistorState:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mDVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

    iput v3, p0, Lcom/android/server/ThermistorObserver;->mCurrTemperature:I

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    const-string v2, ""

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mFormattedGoalTime:[Ljava/lang/String;

    new-instance v1, Lcom/android/server/ThermistorObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/ThermistorObserver$2;-><init>(Lcom/android/server/ThermistorObserver;)V

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mBatteryBR:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/ThermistorObserver$3;

    invoke-direct {v1, p0}, Lcom/android/server/ThermistorObserver$3;-><init>(Lcom/android/server/ThermistorObserver;)V

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mBatteryBRForAMOLED:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/ThermistorObserver;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolSupportSIOP:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->init()V

    const-string v1, "DEVPATH=/devices/platform/sec-thermistor"

    invoke-virtual {p0, v1}, Lcom/android/server/ThermistorObserver;->startObserving(Ljava/lang/String;)V

    const-string v1, "DEVPATH=/devices/platform/s5p-tmu"

    invoke-virtual {p0, v1}, Lcom/android/server/ThermistorObserver;->startObserving(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolAMOLED:Z

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    iput-boolean v4, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    iput-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    iput-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mBoolControlRenderingFPS:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mBatteryBRForAMOLED:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "ThermistorObserver() : NOT WORKING"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0xfet 0x1t 0x0t 0x0t
        0x0t 0xbat 0xdbt 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1ct 0x2t 0x0t 0x0t
        0x40t 0x77t 0x1bt 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x4et 0x2t 0x0t 0x0t
        0xe0t 0x93t 0x4t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x62t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private final LaunchLimitChargingCurrent(Z)V
    .locals 5

    const/4 v4, -0x1

    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "LaunchLimitChargingCurrent : NOT SUPPORTED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LaunchLimitChargingCurrent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mBatteryBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/ThermistorObserver;->limitChargingCurrent(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mBatteryBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput v4, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/ThermistorObserver;->limitChargingCurrent(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/ThermistorObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->pedningToControl()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/ThermistorObserver;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver;->limitBrightness(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/ThermistorObserver;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mIntentSIOPEnable:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/ThermistorObserver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/ThermistorObserver;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mIntentSIOPDisable:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1400()I
    .locals 1

    sget v0, Lcom/android/server/ThermistorObserver;->mControlConditionStopTemperature:I

    return v0
.end method

.method static synthetic access$1402(I)I
    .locals 0

    sput p0, Lcom/android/server/ThermistorObserver;->mControlConditionStopTemperature:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/server/ThermistorObserver;)[[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/ThermistorObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->updateState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ThermistorObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/ThermistorObserver;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ThermistorObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/server/ThermistorObserver;->mThermistorState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/ThermistorObserver;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver;->limitChargingCurrent(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ThermistorObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/ThermistorObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->broadcastInformation()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ThermistorObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/ThermistorObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolCurrentLimitBrightness:Z

    return v0
.end method

.method private broadcastInformation()V
    .locals 9

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v7, "TO.ACTION_FROM_THERMISTOR_OBSERVER"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object v7, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    array-length v7, v7

    new-array v4, v7, [I

    iget-object v7, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    array-length v7, v7

    new-array v5, v7, [I

    iget-object v7, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    array-length v7, v7

    new-array v0, v7, [I

    const/4 v2, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    array-length v7, v7

    if-ge v2, v7, :cond_0

    iget-object v7, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v7, v7, v2

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v4, v2

    iget-object v7, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v7, v7, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v5, v2

    iget-object v7, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v7, v7, v2

    const/4 v8, 0x2

    aget v7, v7, v8

    aput v7, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v7, "TO.TestIntent.SHOW.CURRENT.TEMPERATURE"

    iget v8, p0, Lcom/android/server/ThermistorObserver;->mCurrTemperature:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "TO.TestIntent.SHOW.CURRENT.STATE"

    iget v8, p0, Lcom/android/server/ThermistorObserver;->mThermistorState:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "TO.TestIntent.SHOW.STOP.TEMPERATURE"

    sget v8, Lcom/android/server/ThermistorObserver;->mControlConditionStopTemperature:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "TO.TestIntent.SHOW.TEMPERATURE"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v7, "TO.TestIntent.SHOW.TIME"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v7, "TO.TestIntent.SHOW.GOAL_TIME"

    iget-object v8, p0, Lcom/android/server/ThermistorObserver;->mFormattedGoalTime:[Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v7, "TO.TestIntent.SHOW.BOOL_PENDING"

    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    sget-object v7, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v8, "intent"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .locals 7

    const/4 v2, 0x0

    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method private final getResources()V
    .locals 9

    iget-object v5, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    const v5, 0x1110022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    const v5, 0x1110023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    const v5, 0x1110024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/ThermistorObserver;->mBoolControlRenderingFPS:Z

    const v5, 0x10e001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/android/server/ThermistorObserver;->mControlConditionStopTemperature:I

    sget-object v5, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getResources : mBoolControlFrequency : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mBoolControlBrightness : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mBoolControlChargingCurrent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mBoolControlRenderingFPS : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/ThermistorObserver;->mBoolControlRenderingFPS:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mControlConditionStopTemperature : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/ThermistorObserver;->mControlConditionStopTemperature:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x1070029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const v5, 0x107002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    :try_start_0
    iget-object v5, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    array-length v5, v5

    array-length v6, v0

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    array-length v5, v5

    array-length v6, v1

    if-eq v5, v6, :cond_2

    :cond_0
    sget-object v5, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v6, "getResources : error : incorrect IOP temperature vs time table"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    array-length v5, v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v5, v5, v3

    const/4 v6, 0x0

    aget v7, v0, v3

    aput v7, v5, v6

    iget-object v5, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v5, v5, v3

    const/4 v6, 0x1

    aget v7, v1, v3

    aput v7, v5, v6

    sget-object v5, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getResources : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v7, v7, v3

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v7, v7, v3

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v5, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v6, "getResources"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final gotoNormalState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ThermistorObserver;->mThermistorState:I

    return-void
.end method

.method private final init()V
    .locals 9

    const/16 v5, 0x80

    new-array v0, v5, [C

    new-instance v5, Lcom/android/server/ThermistorObserver$1;

    invoke-direct {v5, p0}, Lcom/android/server/ThermistorObserver$1;-><init>(Lcom/android/server/ThermistorObserver;)V

    iput-object v5, p0, Lcom/android/server/ThermistorObserver;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->getResources()V

    iget-object v5, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v4

    const/4 v3, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget v5, v4, v3

    const v6, 0x7a120

    if-gt v5, v6, :cond_1

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;

    const/4 v6, 0x2

    aget v7, v4, v3

    sget-object v8, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/PowerManager;->newDVFSLock(IILjava/lang/String;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/ThermistorObserver;->mDVFSMaxLock:Landroid/os/PowerManager$DVFSLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "TO.ACTION_FROM_THERMISTOR_TESTAPP"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/ThermistorObserver$ThermistorReceiver;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/ThermistorObserver$ThermistorReceiver;-><init>(Lcom/android/server/ThermistorObserver;Lcom/android/server/ThermistorObserver$1;)V

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private final limitBrightness(Z)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "limitBrightness : NOT SUPPORTED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limitBrightness : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/16 v0, 0xbb

    :goto_1
    iput-boolean p1, p0, Lcom/android/server/ThermistorObserver;->mBoolCurrentLimitBrightness:Z

    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/PowerManagerService;->setMasterBrightnessLimit(II)V

    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mIntentSIOPEnable:Landroid/content/Intent;

    const-string v2, "max_brightness"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/16 v0, 0xff

    goto :goto_1
.end method

.method private final limitChargingCurrent(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limitChargingCurrent : mIsChargingCurrentLimited"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " siop activated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/power_supply/battery/siop_activated"

    invoke-static {v1, v0}, Lcom/android/server/ThermistorObserver;->fileWriteInt(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final limitFrequency(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitFrequency : NOT SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mDVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitFrequency : mDVFSMaxLock is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitFrequency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mDVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$DVFSLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mDVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$DVFSLock;->acquire()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mIntentSIOPEnable:Landroid/content/Intent;

    const-string v1, "cpu_clock"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mDVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$DVFSLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mDVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$DVFSLock;->release()V

    goto :goto_1
.end method

.method private final notifyLimitBrightness(I)V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "ThermistorObserver.action.LIMIT_BRIGHTNESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ThermistorObserver.extra.LIMIT_BRIGHTNESS"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v3, "notifyLimitBrightness : intent"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final pedningToControl()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v1, v1, v0

    aget v1, v1, v5

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v2, v2, v0

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v1, v1, v0

    aput v4, v1, v5

    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mFormattedGoalTime:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : release mControlCondition["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v3, v3, v0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v3, v3, v0

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v5, p0, Lcom/android/server/ThermistorObserver;->mThermistorState:I

    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "handleMessage : mThermistorState= NORMAL -> CONTROL "

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->startControl()V

    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->broadcastInformation()V

    return-void
.end method

.method private final startControl()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "startControl !!! "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mSystemReady:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/ThermistorObserver;->LaunchLimitChargingCurrent(Z)V

    invoke-direct {p0, v2}, Lcom/android/server/ThermistorObserver;->limitFrequency(Z)V

    invoke-direct {p0, v2}, Lcom/android/server/ThermistorObserver;->limitBrightness(Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/ThermistorObserver;->limitRenderingFPS(Z)V

    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mIntentSIOPEnable:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final stopControl()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "stopControl !!! "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mSystemReady:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/ThermistorObserver;->limitFrequency(Z)V

    invoke-direct {p0, v2}, Lcom/android/server/ThermistorObserver;->limitBrightness(Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/ThermistorObserver;->limitRenderingFPS(Z)V

    invoke-direct {p0, v2}, Lcom/android/server/ThermistorObserver;->LaunchLimitChargingCurrent(Z)V

    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mIntentSIOPDisable:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final systemShutdown()V
    .locals 3

    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "systemShutdown"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateState()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v4, p0, Lcom/android/server/ThermistorObserver;->mThermistorState:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->broadcastInformation()V

    return-void

    :pswitch_1
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/android/server/ThermistorObserver;->mCurrTemperature:I

    iget-object v5, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v5, v5, v3

    aget v5, v5, v8

    if-lt v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v4, v4, v3

    aget v4, v4, v10

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v5, v5, v3

    aget v5, v5, v8

    iget-object v6, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v6, v6, v3

    aget v6, v6, v9

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v4, v4, v3

    aput v9, v4, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v6, v6, v3

    aget v6, v6, v9

    int-to-long v6, v6

    add-long v1, v4, v6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mFormattedGoalTime:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/ThermistorObserver;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateState : acquire mControlCondition["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v6, v6, v3

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v6, v6, v3

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ThermistorObserver;->mFormattedGoalTime:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v4, p0, Lcom/android/server/ThermistorObserver;->mCurrTemperature:I

    iget-object v5, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v5, v5, v3

    aget v5, v5, v8

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v4, v4, v3

    aget v4, v4, v10

    if-ne v4, v9, :cond_2

    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v5, v5, v3

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v4, v4, v3

    aput v8, v4, v10

    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mFormattedGoalTime:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v3

    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateState : release mControlCondition["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v6, v6, v3

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ThermistorObserver;->mControlCondition:[[I

    aget-object v6, v6, v3

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :pswitch_2
    iget v4, p0, Lcom/android/server/ThermistorObserver;->mCurrTemperature:I

    sget v5, Lcom/android/server/ThermistorObserver;->mControlConditionStopTemperature:I

    if-gt v4, v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->stopControl()V

    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->gotoNormalState()V

    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v5, "mThermistorState= CONTROL -> NORMAL "

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final limitRenderingFPS(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlRenderingFPS:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitRenderingFPS : NOT SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitRenderingFPS ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "dev.powersave_fps"

    if-eqz p1, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mIntentSIOPEnable:Landroid/content/Intent;

    const-string v1, "ui_rendering"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5

    const/4 v4, -0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEVPATH=/devices/platform/sec-thermistor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eq v2, v4, :cond_1

    :try_start_1
    const-string v2, "TEMPERATURE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/ThermistorObserver;->mCurrTemperature:I

    sget-object v2, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mThermistorState ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ThermistorObserver;->mThermistorState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Thermistor temperature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ThermistorObserver;->mCurrTemperature:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->updateState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse TEMPERATURE from event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    :try_start_3
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEVPATH=/devices/platform/s5p-tmu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eq v2, v4, :cond_2

    :try_start_4
    const-string v2, "TMUSTATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->systemShutdown()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_5
    sget-object v2, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse TMUSTATE from event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v3, "Thermistor : onUEvent : ERROR : SHOULD NOT BE HERE!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method systemReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mSystemReady:Z

    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->stopControl()V

    return-void
.end method
