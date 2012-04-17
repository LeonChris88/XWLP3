.class public Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactMultiSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarButtonUpdateListener;,
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;,
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;
    }
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mActionCode:I

.field private mCustomActionBarView:Landroid/view/View;

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

.field private mIsAutoAdd:Z

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

.field private mSelectedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mActionCode:I

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->updateDoneButtonState(Z)V

    return-void
.end method

.method private configureActivityTitle(Landroid/app/ActionBar;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f0a0223

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a0224

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    :cond_2
    const-string v0, "com.sec.android.app.contacts.action.GROUP_DELETE"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a028e

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    :cond_3
    const-string v0, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a021d

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method private getIntentInfo(Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    const-string v0, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "EditMode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    const-string v0, "accountType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "DTM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MAX"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    const-string v1, "accountType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "accountName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "groupId"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "systemId"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    :goto_0
    const-string v0, "AutoAdd"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsAutoAdd:Z

    const-string v0, "ModifiedIds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    const-string v0, "ExceptedAccounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "GroupInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    goto :goto_0

    :cond_3
    const-string v0, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SelectedAccounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedAccounts:Ljava/util/List;

    goto :goto_1
.end method

.method private updateDoneButtonState(Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mCustomActionBarView:Landroid/view/View;

    const v2, 0x7f0d009e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 4

    const-string v1, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;-><init>()V

    iget v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsAutoAdd:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setAutoAdd(Z)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setModifiedMemberIds(Ljava/util/List;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setExceptedAccounts(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setDirectorySearchMode(I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d00e6

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_1
    const-string v1, "com.sec.android.app.contacts.action.GROUP_DELETE"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0

    :cond_2
    const-string v1, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->setSelectedAccounts(Ljava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setupActionListener()V

    return-void

    :cond_1
    instance-of v0, p1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, -0x2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v5, "actionCode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mActionCode:I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getIntentInfo(Landroid/content/Intent;)V

    const v5, 0x7f04003b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v5, 0x7f040018

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mCustomActionBarView:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mCustomActionBarView:Landroid/view/View;

    const v6, 0x7f0d009e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mCustomActionBarView:Landroid/view/View;

    const v6, 0x7f0d009f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0x1e

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mCustomActionBarView:Landroid/view/View;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->configureActivityTitle(Landroid/app/ActionBar;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->configureListFragment()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deleteCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->onDeleteCompleted()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setupActionListener()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setGroupMemberPickerActionListener(Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarButtonUpdateListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarButtonUpdateListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->setActionBarButtonUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->setAccountPickerActionListener(Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;)V

    goto :goto_0
.end method
