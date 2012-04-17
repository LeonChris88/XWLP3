.class public Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "DisplayOptionsPreferenceFragment.java"


# instance fields
.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v3, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    const/high16 v3, 0x7f05

    invoke-virtual {p0, v3}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "serviceNumbers"

    invoke-virtual {p0, v3}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "displayOrder"

    invoke-virtual {p0, v4}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "sortOrder"

    invoke-virtual {p0, v4}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "vcardSettings"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "serviceNumbers"

    invoke-virtual {p0, v4}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "sendContact"

    invoke-virtual {p0, v1}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0234

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "sendContact"

    invoke-virtual {p0, v1}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0235

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
