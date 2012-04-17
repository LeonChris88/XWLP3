.class public Lcom/android/mms/ui/LanguagePreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "LanguagePreferenceActivity.java"


# instance fields
.field private bChanged:Z

.field private mlangcount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->mlangcount:I

    return-void
.end method

.method private validate(I)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "pref_key_cb_language"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/LanguagePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/LanguagePreferenceActivity;->setCount(I)V

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_2
    return v3

    :pswitch_3
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->mlangcount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->mlangcount:I

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCheckedCount()I
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/mms/ui/LanguagePreferenceActivity;->validate(I)Z

    iget v0, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->mlangcount:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LanguagePreferenceActivity;->addPreferencesFromResource(I)V

    const-string v2, "pref_key_cb_language"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LanguagePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f03002a

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    iput-boolean v3, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->bChanged:Z

    return-void
.end method

.method protected onPause()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "LanguageCount"

    invoke-virtual {p0}, Lcom/android/mms/ui/LanguagePreferenceActivity;->getCheckedCount()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v2, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->bChanged:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/LanguagePreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_select_all_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v4}, Lcom/android/mms/ui/LanguagePreferenceActivity;->validate(I)Z

    :goto_0
    iput-boolean v4, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->bChanged:Z

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_0
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/mms/ui/LanguagePreferenceActivity;->validate(I)Z

    goto :goto_0

    :cond_1
    const-string v2, "pref_key_cb_language"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LanguagePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/LanguagePreferenceActivity;->validate(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
