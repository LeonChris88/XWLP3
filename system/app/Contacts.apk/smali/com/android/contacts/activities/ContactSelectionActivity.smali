.class public Lcom/android/contacts/activities/ContactSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;
    }
.end annotation


# instance fields
.field private mActionCode:I

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field protected mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ContactSelectionActivity;)Lcom/android/contacts/list/ContactsRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    return-object v0
.end method

.method private actionbarTitle()Ljava/lang/String;
    .locals 5

    const v4, 0x7f0a0010

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    :goto_1
    move-object v2, v1

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_3
    const v3, 0x7f0a000d

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_6
    const v3, 0x7f0a000e

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_7
    const v3, 0x7f0a000f

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_8
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_1
        0x46 -> :sswitch_2
        0x50 -> :sswitch_0
        0x5a -> :sswitch_4
        0x64 -> :sswitch_8
        0x69 -> :sswitch_5
        0x6e -> :sswitch_3
        0x78 -> :sswitch_6
        0x82 -> :sswitch_7
    .end sparse-switch
.end method

.method private hasPhoto()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v3, "photo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const-string v3, "photo_uri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private hasRingtone()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ringtone_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public configureListFragment()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v4

    if-ne v1, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getHideCreateLabel()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setCreateContactEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setEditMode(Z)V

    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->hasRingtone()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setRingToneMode(Z)V

    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->hasPhoto()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setAttachPhotoMode(Z)V

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->setDirectorySearchMode(I)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    :goto_2
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d00e6

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :sswitch_1
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setSearchMode(Z)V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->shouldIncludeProfile()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setIncludeProfile(Z)V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v1

    const/16 v4, 0x19

    if-ne v1, v4, :cond_2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setOnlyPhoneNumberProjection(Z)V

    :goto_3
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->setOnlyPhoneNumberProjection(Z)V

    goto :goto_3

    :sswitch_2
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setCreateContactEnabled(Z)V

    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->hasRingtone()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setRingToneMode(Z)V

    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->hasPhoto()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setAttachPhotoMode(Z)V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v1

    const/16 v4, 0x18

    if-ne v1, v4, :cond_4

    :goto_5
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setFinishActivityonCreateComplete(Z)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    :cond_3
    move v1, v3

    goto :goto_4

    :cond_4
    move v2, v3

    goto :goto_5

    :sswitch_3
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setSearchMode(Z)V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/contacts/list/ContactPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setShortcutRequested(Z)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    :sswitch_4
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    :sswitch_5
    new-instance v1, Lcom/android/contacts/list/EmailAddressPickerFragment;

    invoke-direct {v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    :sswitch_6
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setShortcutAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSearchMode(Z)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    :sswitch_7
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setShortcutAction(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    :sswitch_8
    new-instance v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_1
        0x46 -> :sswitch_2
        0x50 -> :sswitch_0
        0x5a -> :sswitch_4
        0x64 -> :sswitch_8
        0x69 -> :sswitch_5
        0x6e -> :sswitch_3
        0x78 -> :sswitch_6
        0x82 -> :sswitch_7
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->setupActionListener()V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/contacts/widget/ContextMenuAdapter;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/16 v10, 0x1e

    const/4 v9, -0x2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v7, "actionCode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    :cond_0
    iget-object v7, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    iget-object v7, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v7}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v7}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto :goto_0

    :cond_2
    const v7, 0x7f04003b

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactSelectionActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v7, 0x7f040018

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v7, 0x7f0d009e

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    const v7, 0x7f0d009f

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v7, Lcom/android/contacts/activities/ContactSelectionActivity$1;

    invoke-direct {v7, p0}, Lcom/android/contacts/activities/ContactSelectionActivity$1;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->actionbarTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureListFragment()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "actionCode"

    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    return-void
.end method

.method public returnPickerResult(Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    return-void
.end method

.method public setupActionListener()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/ContactPickerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/ContactPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setOnPostalAddressPickerActionListener(Lcom/android/contacts/list/OnPostalAddressPickerActionListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/EmailAddressPickerFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/EmailAddressPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setOnEmailAddressPickerActionListener(Lcom/android/contacts/list/OnEmailAddressPickerActionListener;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityAndForwardResult(Landroid/content/Intent;)V
    .locals 2

    const/high16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    return-void
.end method
