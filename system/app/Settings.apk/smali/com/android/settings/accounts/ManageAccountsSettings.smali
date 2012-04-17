.class public Lcom/android/settings/accounts/ManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/DialogCreatable;


# instance fields
.field private mAddAccountButton1:Landroid/widget/Button;

.field private mAddAccountButton2:Landroid/widget/Button;

.field private mAuthorities:[Ljava/lang/String;

.field private mAutoSyncSwitch:Landroid/widget/Switch;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mErrorInfoIcon:Landroid/widget/ImageView;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mOneButtonLayout:Landroid/widget/LinearLayout;

.field private mSyncAllButton:Landroid/widget/Button;

.field private mTwoButtonsLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private cancelSyncAllForEnabledProviders()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncAllForEnabledProviders(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method private requestOrCancelSyncAll(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 4

    if-eqz p3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManageAccountsSettings : request : account = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ], authority = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManageAccountsSettings : cancel : account = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ], authority = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestOrCancelSyncAllForEnabledProviders(Z)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/AccountPreference;

    invoke-virtual {v6}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    iget-object v8, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v8}, Landroid/widget/Switch;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v7, :cond_0

    :cond_1
    invoke-direct {p0, v0, v2, p1}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncAll(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    const-string v8, "AccountSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ManageAccountsSettings : requestOrCancelSyncAllForEnabledProviders : no syncadapters found for [ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setTextSyncAll(Z)V
    .locals 16

    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v9, 0x1

    :goto_0
    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v11, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/settings/AccountPreference;

    invoke-virtual {v10}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ManageAccountsSettings : setSyncButtonText : no syncadapters found for [ "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-nez v11, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mOneButtonLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTwoButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v13, "AccountSettings"

    const-string v14, "ManageAccountsSettings : Sync button is removed !!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_5
    if-nez v9, :cond_8

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mOneButtonLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTwoButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    const v14, 0x7f0b07c4

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(I)V

    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v14}, Landroid/widget/Switch;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_6

    :goto_4
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_5
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ManageAccountsSettings : Sync button is [ Sync all ] and enable is [ "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/widget/Button;->isEnabled()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    const-string v13, "AccountSettings"

    const-string v14, "ManageAccountsSettings : setTextSyncAll() : Null Pointer Exception!!!"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    :cond_6
    const/16 p1, 0x1

    goto :goto_4

    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mOneButtonLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTwoButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    const v14, 0x7f0b060f

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v13, "AccountSettings"

    const-string v14, "ManageAccountsSettings : Sync button is [ Cancel sync ] !!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private startAccountSettings(Lcom/android/settings/AccountPreference;)V
    .locals 7

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0601

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method private startSyncAllForEnabledProvider()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncAllForEnabledProviders(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 17

    const-string v7, ""

    const-string v12, ""

    const-string v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    const/4 v9, 0x0

    move-object/from16 v0, p1

    array-length v13, v0

    :goto_1
    if-ge v9, v13, :cond_5

    aget-object v3, p1, v9

    iget-object v2, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    array-length v11, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_1

    aget-object v14, v8, v10

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v15, 0x1

    :cond_1
    if-eqz v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v2, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v2, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v16, "com.android.tmo_myphonebook"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_2
    new-instance v1, Lcom/android/settings/AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10

    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, -0x2

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0800ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccountButton1:Landroid/widget/Button;

    const v3, 0x7f0800ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccountButton2:Landroid/widget/Button;

    const v3, 0x7f0800ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccountButton1:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccountButton2:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0800eb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mOneButtonLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0800ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTwoButtonsLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020062

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v6, v6, v1, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    const v4, 0x7f0b07c7

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    const v4, 0x7f0b07c8

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/settings/accounts/ManageAccountsSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/ManageAccountsSettings$1;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AccountPreference;

    invoke-virtual {v1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AccountPreference;->setProviderIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccountButton1:Landroid/widget/Button;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccountButton2:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "AccountSettings"

    const-string v2, "ManageAccountsSettings : Add account button is clicked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0b07c4

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_3

    const-string v1, "AccountSettings"

    const-string v2, "ManageAccountsSettings : Sync all button is clicked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->startSyncAllForEnabledProvider()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto :goto_0

    :cond_3
    const-string v1, "AccountSettings"

    const-string v2, "ManageAccountsSettings : Cancel sync button is clicked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->cancelSyncAllForEnabledProviders()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f040051

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    instance-of v1, p2, Lcom/android/settings/AccountPreference;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/settings/AccountPreference;

    if-eqz v0, :cond_0

    :cond_0
    check-cast p2, Lcom/android/settings/AccountPreference;

    invoke-direct {p0, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/settings/AccountPreference;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 30

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    if-nez v26, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v11

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v20

    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    const/4 v14, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v16, v0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_3

    aget-object v18, v20, v14

    invoke-virtual/range {v18 .. v18}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v26

    if-eqz v26, :cond_2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v10

    :goto_2
    if-ge v12, v10, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/settings/AccountPreference;

    move/from16 v26, v0

    if-nez v26, :cond_4

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v3, v17

    check-cast v3, Lcom/android/settings/AccountPreference;

    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    const/16 v21, 0x0

    const/16 v23, 0x0

    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v2, v8}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v19

    invoke-static {v2, v8}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-static {v2, v8}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_6

    const/16 v22, 0x1

    :goto_5
    invoke-static {v2, v8}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v9

    if-eqz v11, :cond_7

    iget-object v0, v11, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    new-instance v26, Landroid/accounts/Account;

    iget-object v0, v11, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v11, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    const/4 v4, 0x1

    :goto_6
    if-eqz v19, :cond_8

    if-eqz v22, :cond_8

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_8

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    const/4 v15, 0x1

    :goto_7
    if-eqz v15, :cond_5

    if-nez v4, :cond_5

    if-nez v9, :cond_5

    const/16 v23, 0x1

    const/4 v6, 0x1

    :cond_5
    if-eqz v22, :cond_9

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    const/16 v26, 0x1

    :goto_8
    add-int v21, v21, v26

    goto/16 :goto_4

    :cond_6
    const/16 v22, 0x0

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    const/4 v15, 0x0

    goto :goto_7

    :cond_9
    const/16 v26, 0x0

    goto :goto_8

    :cond_a
    const-string v26, "AccountSettings"

    const/16 v27, 0x2

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    if-eqz v26, :cond_b

    const-string v26, "AccountSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "no syncadapters found for "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/16 v24, 0x1

    if-eqz v23, :cond_d

    const/16 v24, 0x2

    const/4 v5, 0x1

    :cond_c
    :goto_9
    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/settings/AccountPreference;->setSyncStatus(I)V

    goto/16 :goto_3

    :cond_d
    if-nez v21, :cond_e

    const/16 v24, 0x1

    goto :goto_9

    :cond_e
    if-lez v21, :cond_c

    const/16 v24, 0x0

    const/4 v5, 0x1

    goto :goto_9

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    if-eqz v6, :cond_10

    const/16 v26, 0x0

    :goto_a
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    if-eqz v6, :cond_11

    const/16 v26, 0x0

    :goto_b
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/accounts/ManageAccountsSettings;->setTextSyncAll(Z)V

    goto/16 :goto_0

    :cond_10
    const/16 v26, 0x8

    goto :goto_a

    :cond_11
    const/16 v26, 0x8

    goto :goto_b
.end method

.method public showDialog(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
