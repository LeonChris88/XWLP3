.class public Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactHistoryActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;


# instance fields
.field public mEveryBodyIsOff:Z

.field private mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

.field public mIsExistItems:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSortOptions:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mEveryBodyIsOff:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    return-void
.end method

.method private updateActionBar(Z)V
    .locals 10

    const/16 v8, 0xe

    const/4 v5, 0x0

    const/4 v9, -0x2

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    const/16 v6, 0xc

    invoke-virtual {v0, v6, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const v6, 0x7f0a0253

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v7, 0x1e

    invoke-virtual {v0, v8, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const v7, 0x7f0a028e

    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v7, 0x7f04001c

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v7, 0x7f0d00a5

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v7, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mEveryBodyIsOff:Z

    if-eqz v7, :cond_2

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    new-instance v5, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0d009f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v5, v9, v9, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1
.end method

.method private updateMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setMode(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateActionBar(Z)V

    return-void
.end method


# virtual methods
.method protected doDeleteAction()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->doDeleteAction()V

    return-void
.end method

.method protected doRevertActionMenu()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateMode(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "options"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "view_by_call"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "view_by_message"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "view_by_email"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "view_by_im"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->updateSharedPrefs()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateMode(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040030

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d00d0

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateActionBar(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0d026a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateMode(Z)V

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    return-void
.end method

.method public onExistsDeletedItems(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mEveryBodyIsOff:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mEveryBodyIsOff:Z

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateActionBar(Z)V

    goto :goto_0
.end method

.method public onFinishedDeletion(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateMode(Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateMode(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateMode(Z)V

    goto :goto_0

    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "options"

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getSortOptions()[Z

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d026a -> :sswitch_1
        0x7f0d026b -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const v4, 0x7f0d026b

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, 0x7f0d026a

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onQueryCompleted(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
