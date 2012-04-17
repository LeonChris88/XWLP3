.class public Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;
.super Landroid/app/Activity;
.source "ContactHistoryViewByActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;


# instance fields
.field private mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

.field mOptionIsChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    return-void
.end method

.method private RegisterActionBar()V
    .locals 9

    const/4 v8, -0x2

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f040018

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f0d009e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    new-instance v5, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0d009f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0xe

    const/16 v7, 0x1e

    invoke-virtual {v0, v5, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const v5, 0x7f0a0270

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v5, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;)Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    return-object v0
.end method


# virtual methods
.method public doRevertActionMenu()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->finish()V

    return-void
.end method

.method public doSaveAction([Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "options"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->finish()V

    return-void
.end method

.method public onChangedOptionItems(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->RegisterActionBar()V

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "ContactHistoryViewByListActivity"

    const-string v1, "onCreate!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f040035

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d00e2

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->RegisterActionBar()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    const-string v1, "selectAll"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setSelectAllCheckBox(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    const-string v1, "options"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setSortOptions([Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "options"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getSortOptions()[Z

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const-string v0, "selectAll"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getSelectAllCheckBox()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
