.class public Lcom/android/settings/powersavingmode/PowerSavingModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerSavingModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdjustBrightness:Landroid/preference/CheckBoxPreference;

.field private mBrightnessSetting:Landroid/preference/ListPreference;

.field private mCancelButton:Landroid/widget/Button;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisableBluetooth:Landroid/preference/CheckBoxPreference;

.field private mDisableGps:Landroid/preference/CheckBoxPreference;

.field private mDisableSync:Landroid/preference/CheckBoxPreference;

.field private mDisableWifi:Landroid/preference/CheckBoxPreference;

.field private mModeValueSetting:Landroid/preference/ListPreference;

.field private mNew_battery_level:I

.field private mNew_brightness_level:I

.field private mNew_screen_timeout:I

.field private mOkButton:Landroid/widget/Button;

.field private mSaved_battery_level:I

.field private mSaved_brightness_level:I

.field private mSaved_screen_timeout:I

.field private mScreentimeout:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3a98

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    return-void
.end method

.method private toggleBrightnessSetting(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateUIFromPreferences()V
    .locals 15

    const/16 v14, 0x32

    const/16 v13, 0x1e

    const/16 v12, 0xa

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "psm_battery_level"

    invoke-static {v7, v10, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v12, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ne v0, v12, :cond_7

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07a5

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "psm_brightness_level"

    invoke-static {v7, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v12, :cond_b

    const/4 v3, 0x0

    :goto_2
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iput v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    iput v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    if-ne v2, v12, :cond_10

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07aa

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_3
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "psm_screen_timeout"

    const/16 v11, 0x3a98

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x3a98

    if-ne v5, v7, :cond_14

    const/4 v6, 0x0

    :goto_4
    iput v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    iput v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    const/4 v4, 0x1

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-direct {p0, v4}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->toggleBrightnessSetting(Z)V

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "psm_wifi"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1a

    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "psm_bluetooth"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1b

    move v7, v8

    :goto_6
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "psm_gps"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1c

    move v7, v8

    :goto_7
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "psm_sync"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1d

    move v7, v8

    :goto_8
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "psm_brightness"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_1e

    :goto_9
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_2
    const/16 v7, 0x14

    if-ne v0, v7, :cond_3

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_3
    if-ne v0, v13, :cond_4

    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_4
    const/16 v7, 0x28

    if-ne v0, v7, :cond_5

    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_5
    if-ne v0, v14, :cond_6

    const/4 v1, 0x4

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    const/16 v7, 0x14

    if-ne v0, v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07a6

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    if-ne v0, v13, :cond_9

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07a7

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    const/16 v7, 0x28

    if-ne v0, v7, :cond_a

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07a8

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    if-ne v0, v14, :cond_0

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07a9

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    if-ne v2, v13, :cond_c

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_c
    if-ne v2, v14, :cond_d

    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_d
    const/16 v7, 0x46

    if-ne v2, v7, :cond_e

    const/4 v3, 0x3

    goto/16 :goto_2

    :cond_e
    const/16 v7, 0x64

    if-ne v2, v7, :cond_f

    const/4 v3, 0x4

    goto/16 :goto_2

    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_10
    if-ne v2, v13, :cond_11

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07ab

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_11
    if-ne v2, v14, :cond_12

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07ac

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_12
    const/16 v7, 0x46

    if-ne v2, v7, :cond_13

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07ad

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_13
    const/16 v7, 0x64

    if-ne v2, v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b07ae

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_14
    const/16 v7, 0x7530

    if-ne v5, v7, :cond_15

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_15
    const v7, 0xea60

    if-ne v5, v7, :cond_16

    const/4 v6, 0x2

    goto/16 :goto_4

    :cond_16
    const v7, 0x1d4c0

    if-ne v5, v7, :cond_17

    const/4 v6, 0x3

    goto/16 :goto_4

    :cond_17
    const v7, 0x493e0

    if-ne v5, v7, :cond_18

    const/4 v6, 0x4

    goto/16 :goto_4

    :cond_18
    const v7, 0x927c0

    if-ne v5, v7, :cond_19

    const/4 v6, 0x5

    goto/16 :goto_4

    :cond_19
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_1a
    move v7, v9

    goto/16 :goto_5

    :cond_1b
    move v7, v9

    goto/16 :goto_6

    :cond_1c
    move v7, v9

    goto/16 :goto_7

    :cond_1d
    move v7, v9

    goto/16 :goto_8

    :cond_1e
    move v8, v9

    goto/16 :goto_9
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOkButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_6

    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_battery_level"

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_brightness_level"

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_screen_timeout"

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_wifi"

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_bluetooth"

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_gps"

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "psm_sync"

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_brightness"

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_4
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->finish()V

    :cond_0
    :goto_5
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_battery_level"

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_battery_level:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_brightness_level"

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_brightness_level:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_screen_timeout"

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSaved_screen_timeout:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->finish()V

    goto :goto_5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050023

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "on_battery_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "disable_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    const-string v0, "disable_bluetooth"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    const-string v0, "disable_gps"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    const-string v0, "disable_sync"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    const-string v0, "disable_brightness"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    const-string v0, "brightness_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "screentimeout_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_wifi"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_bluetooth"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_gps"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_sync"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "psm_brightness"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->updateUIFromPreferences()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f040032

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOkButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    const-string v0, "menupowersaving"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/16 v5, 0x32

    const/16 v4, 0x1e

    const/16 v3, 0xa

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "PowerSavingModeSettings"

    const-string v2, "set battery level is changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07a5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07a6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07a7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    const/16 v2, 0x28

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07a8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_battery_level:I

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mModeValueSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07a9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "PowerSavingModeSettings"

    const-string v2, "Brightness level is changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07aa

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07ab

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    if-ne v1, v5, :cond_8

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07ac

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    const/16 v2, 0x46

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07ad

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_brightness_level:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mBrightnessSetting:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07ae

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mScreentimeout:Landroid/preference/ListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "PowerSavingModeSettings"

    const-string v2, "Screentimeout is changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mNew_screen_timeout:I

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableBluetooth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mDisableSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mAdjustBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->toggleBrightnessSetting(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
