.class public Lcom/android/settings/ClockPanelInfo;
.super Landroid/widget/LinearLayout;
.source "ClockPanelInfo.java"


# instance fields
.field private final KEY_APP_SERVICE_STATUS:Ljava/lang/String;

.field private final KEY_CITY_ID:Ljava/lang/String;

.field private final KEY_CITY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final LOCK_SCREEN_SERVICE_CODE:I

.field private mBatteryLevel:I

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/graphics/drawable/Drawable;

.field private mChargingLayout:Landroid/widget/RelativeLayout;

.field private mCharingText:Landroid/widget/TextView;

.field private mLayoutPosition:I

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z

.field private mSpace_01:Landroid/widget/LinearLayout;

.field private mSpace_02:Landroid/widget/LinearLayout;

.field private mTemperatureUnit:Landroid/graphics/drawable/Drawable;

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherDaemonState:I

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherLayout:Landroid/widget/RelativeLayout;

.field private mWeatherTemperature:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v2, "aw_daemon_service_key_app_service_status"

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->KEY_APP_SERVICE_STATUS:Ljava/lang/String;

    const-string v2, "aw_daemon_service_key_loc_code"

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->KEY_CITY_ID:Ljava/lang/String;

    const-string v2, "aw_daemon_service_key_current_temp"

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->KEY_CURRENT_TEMP:Ljava/lang/String;

    const-string v2, "aw_daemon_service_key_temp_scale"

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->KEY_TEMP_SCALE:Ljava/lang/String;

    const-string v2, "aw_daemon_service_key_icon_num"

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->KEY_ICON_NUM:Ljava/lang/String;

    const-string v2, "aw_daemon_service_key_city_name"

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->KEY_CITY_NAME:Ljava/lang/String;

    iput v3, p0, Lcom/android/settings/ClockPanelInfo;->LOCK_SCREEN_SERVICE_CODE:I

    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mChargingLayout:Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mSpace_01:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mSpace_02:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherCity:Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherTemperature:Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherIcon:Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mCharingText:Landroid/widget/TextView;

    iput v4, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherDaemonState:I

    iput-boolean v4, p0, Lcom/android/settings/ClockPanelInfo;->mShowingBatteryInfo:Z

    iput-boolean v4, p0, Lcom/android/settings/ClockPanelInfo;->mPluggedIn:Z

    const/16 v2, 0x64

    iput v2, p0, Lcom/android/settings/ClockPanelInfo;->mBatteryLevel:I

    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mCharging:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/ClockPanelInfo;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    iput v6, p0, Lcom/android/settings/ClockPanelInfo;->mLayoutPosition:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04004d

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "clock_position"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/ClockPanelInfo;->mLayoutPosition:I

    const v2, 0x7f0800d8

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockPanelInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0800dd

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockPanelInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mChargingLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mChargingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v2, 0x7f0800df

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockPanelInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mSpace_01:Landroid/widget/LinearLayout;

    const v2, 0x7f0800e0

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockPanelInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mSpace_02:Landroid/widget/LinearLayout;

    const v2, 0x7f0800d9

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockPanelInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherCity:Landroid/widget/TextView;

    const v2, 0x7f0800da

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockPanelInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherTemperature:Landroid/widget/TextView;

    const v2, 0x7f0800db

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockPanelInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherIcon:Landroid/widget/ImageView;

    const v2, 0x7f0800de

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockPanelInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mCharingText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "aw_daemon_service_key_app_service_status"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    iput v2, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherDaemonState:I

    invoke-virtual {p0}, Lcom/android/settings/ClockPanelInfo;->updateChargingInfo()V

    iget v2, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherDaemonState:I

    invoke-direct {p0, v2}, Lcom/android/settings/ClockPanelInfo;->setWeatherInfoVisivility(I)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method private findDrawableId(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_c
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_d
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_e
    const/16 v0, 0xe

    goto :goto_0

    :pswitch_f
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x10

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x11

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x12

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x13

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method private refreshBatteryStringAndIcon()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/ClockPanelInfo;->mShowingBatteryInfo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mCharging:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setWeatherIcon(I)V
    .locals 4

    const/16 v2, 0x15

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, p1}, Lcom/android/settings/ClockPanelInfo;->findDrawableId(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherIcon:Landroid/widget/ImageView;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x4bt 0x7t 0x8t 0x1t
        0x4ct 0x7t 0x8t 0x1t
        0x4dt 0x7t 0x8t 0x1t
        0x4et 0x7t 0x8t 0x1t
        0x4ft 0x7t 0x8t 0x1t
        0x50t 0x7t 0x8t 0x1t
        0x51t 0x7t 0x8t 0x1t
        0x52t 0x7t 0x8t 0x1t
        0x53t 0x7t 0x8t 0x1t
        0x54t 0x7t 0x8t 0x1t
        0x55t 0x7t 0x8t 0x1t
        0x56t 0x7t 0x8t 0x1t
        0x56t 0x7t 0x8t 0x1t
        0x57t 0x7t 0x8t 0x1t
        0x58t 0x7t 0x8t 0x1t
        0x6dt 0x7t 0x8t 0x1t
        0x6et 0x7t 0x8t 0x1t
        0x6ft 0x7t 0x8t 0x1t
        0x70t 0x7t 0x8t 0x1t
        0x71t 0x7t 0x8t 0x1t
        0x72t 0x7t 0x8t 0x1t
    .end array-data
.end method

.method private setWeatherInfoVisivility(I)V
    .locals 2

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ClockPanelInfo;->updateWeatherInfo()V

    iget-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateCharingStatus()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mCharingText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mCharingText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ClockPanelInfo;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/ClockPanelInfo;->mCharingText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ClockPanelInfo;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateWeatherView(FIILjava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    if-ne p2, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ClockPanelInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108072d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ClockPanelInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherTemperature:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/ClockPanelInfo;->mWeatherTemperature:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/ClockPanelInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p3}, Lcom/android/settings/ClockPanelInfo;->setWeatherIcon(I)V

    return-void

    :cond_1
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ClockPanelInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108072e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ClockPanelInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public updateChargingInfo()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ClockPanelInfo;->refreshBatteryStringAndIcon()V

    invoke-direct {p0}, Lcom/android/settings/ClockPanelInfo;->updateCharingStatus()V

    return-void
.end method

.method public updateWeatherInfo()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/ClockPanelInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_city_name"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ClockPanelInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_current_temp"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/ClockPanelInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_temp_scale"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/ClockPanelInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aw_daemon_service_key_icon_num"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v1, v3, v2, v0}, Lcom/android/settings/ClockPanelInfo;->updateWeatherView(FIILjava/lang/String;)V

    return-void
.end method
