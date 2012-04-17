.class public Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MenuPowerSavingModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mEnableMode:Landroid/preference/CheckBoxPreference;

.field private mMaximumPowerSavingMode:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private updatemaximumpowersaving(Z)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "pref_siop_clock"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "pref_siop_rendering"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "maximum_power_saving"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    if-nez v1, :cond_0

    invoke-virtual {v3}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    invoke-virtual {v3}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v6

    aget v6, v6, v8

    const-string v7, "MenuPowerSavingModeSettings"

    invoke-virtual {v3, v5, v6, v8, v7}, Landroid/os/PowerManager;->acquirePersistentDVFSLock(IIILjava/lang/String;)V

    :cond_0
    const-string v5, "MenuPowerSavingModeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMaximumPowerSavingMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mMaximumPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    invoke-static {v8}, Lcom/sec/android/hardware/SecHardwareInterface;->setPowerSaveFPS(Z)V

    :cond_1
    invoke-virtual {v3, v8}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.settings.SYSTEMPOWERSAVING_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "maximum_power_saving"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    if-nez v1, :cond_3

    invoke-virtual {v3, v8}, Landroid/os/PowerManager;->releasePersistentDVFSLock(I)V

    :cond_3
    const-string v5, "MenuPowerSavingModeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMaximumPowerSavingMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mMaximumPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_4

    invoke-static {v9}, Lcom/sec/android/hardware/SecHardwareInterface;->setPowerSaveFPS(Z)V

    :cond_4
    invoke-virtual {v3, v9}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "MenuPowerSavingModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mMaximumPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->updatemaximumpowersaving(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0x7f05001a

    invoke-virtual {p0, v1}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->addPreferencesFromResource(I)V

    const-string v1, "maximum_power_saving"

    invoke-virtual {p0, v1}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mMaximumPowerSavingMode:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mMaximumPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "maximum_power_saving"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "use_power_saving_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableMode:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableMode:Landroid/preference/CheckBoxPreference;

    const-string v4, "new_power_saving_mode"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onDismiss : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mMaximumPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mMaximumPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "powersaving_help_not_show_again"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :goto_0
    const-string v9, "MenuPowerSavingModeSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceTreeClick notshowHelp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_0

    iget-object v9, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mMaximumPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v7, 0x7f04008d

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v7, 0x7f0801ae

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v7, 0x7f0801af

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    new-instance v7, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;

    invoke-direct {v7, p0, v4}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;-><init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0779

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v9, 0x1040014

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v9, 0x1080027

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v9, 0x1040013

    invoke-virtual {v7, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v9, 0x1040009

    invoke-virtual {v7, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_1
    return v8

    :catch_0
    move-exception v1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, v8}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->updatemaximumpowersaving(Z)V

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mMaximumPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->updatemaximumpowersaving(Z)V

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "MenuPowerSavingModeSettings"

    const-string v10, "mEnableMode is selected"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "MenuPowerSavingModeSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mEnableMode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "new_power_saving_mode"

    iget-object v11, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_3

    move v7, v8

    :cond_3
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v8

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
