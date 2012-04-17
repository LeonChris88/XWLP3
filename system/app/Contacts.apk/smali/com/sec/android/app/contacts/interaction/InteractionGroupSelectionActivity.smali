.class public Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "InteractionGroupSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;
    }
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field protected mActionCode:I

.field private mCurrentCount:I

.field private mExceptedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field protected mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mLimitedCount:I

.field protected mListFragment:Landroid/app/Fragment;

.field private mMode:I

.field private mModifiedMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequest:Lcom/android/contacts/list/ContactsRequest;

.field protected saveMenuItem:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    return-void
.end method

.method private configureActivityTitle(Landroid/app/ActionBar;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0a0010

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method private getIntentInfo(Landroid/content/Intent;)V
    .locals 4

    const/16 v3, 0xa

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mAction:Ljava/lang/String;

    const-string v0, "InteractionGroupSelectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mACtion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SelectMode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMode:I

    const-string v0, "GroupInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    const-string v0, "ModifiedIds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    const-string v0, "ExceptedAccounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    const-string v0, "actionCode"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mLimitedCount:I

    :goto_0
    const-string v0, "existingRecipientCount"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mCurrentCount:I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mLimitedCount:I

    goto :goto_0
.end method

.method private makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v6, 0x1

    const-string v3, "InteractionGroupSelectionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public configureListFragment()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;-><init>()V

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setModifiedMemberIds(Ljava/util/List;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setExceptedAccounts(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setDirectorySearchMode(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSelectAllEnabled(Z)V

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mCurrentCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setMMSinformation(III)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mListFragment:Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d00e6

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mListFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mListFragment:Landroid/app/Fragment;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setupActionListener()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, -0x2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v5, "actionCode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    new-instance v5, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v5, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {v5, v3}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntentInfo(Landroid/content/Intent;)V

    const v5, 0x7f04003b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f040018

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f0d009e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->saveMenuItem:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->saveMenuItem:Landroid/view/View;

    new-instance v6, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0d009f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setDoneButtonClickable(Z)V

    const/16 v5, 0x1e

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->configureActivityTitle(Landroid/app/ActionBar;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->configureListFragment()V

    return-void
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
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->finish()V

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

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public returnPickPhoneResult(Landroid/net/Uri;)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v2, "display_name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "contact_id =?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data1"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_0

    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v2, "result"

    invoke-virtual {v10, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "datatype"

    const-string v3, "contact"

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_result"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "index"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "index"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "phone_data_id"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v10, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->finish()V

    return-void
.end method

.method public returnPickerResult(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v5, "InteractionGroupSelectionActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v5, "InteractionGroupSelectionActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "line = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "InteractionGroupSelectionActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data.entrySet() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ";"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "InteractionGroupSelectionActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "returnPickerResult - result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v5, "result"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v5, "datatype"

    const-string v6, "contact"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    return-void
.end method

.method protected setDoneButtonClickable(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->saveMenuItem:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setupActionListener()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setGroupMemberPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    :cond_0
    return-void
.end method
