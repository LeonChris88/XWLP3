.class public Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "FavoriteInterfaceActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionCode:I

.field private mCustomActionView:Landroid/view/View;

.field private mCustomSearchView:Landroid/view/View;

.field private mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field protected mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSearchViewLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setButtonClickable(Z)V

    return-void
.end method

.method private setButtonClickable(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d009e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setUpActionBar()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040047

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mCustomSearchView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :cond_0
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040018

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mCustomActionView:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mCustomActionView:Landroid/view/View;

    const v4, 0x7f0d009e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mCustomActionView:Landroid/view/View;

    const v4, 0x7f0d009f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0d00e6

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "has_phone_number"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;-><init>()V

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSelectionVisible(Z)V

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDirectorySearchMode(I)V

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/contacts/list/ContactListFilter;

    const/16 v4, -0xf

    invoke-direct {v3, v4}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    :goto_1
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v3, v5}, Lcom/android/contacts/list/ContactEntryListFragment;->setMultiSelectEnabled(Z)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/contacts/list/ContactListFilter;

    const/16 v4, -0xd

    invoke-direct {v3, v4}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;-><init>()V

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSelectionVisible(Z)V

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    new-instance v3, Lcom/android/contacts/list/ContactListFilter;

    const/16 v4, -0xe

    invoke-direct {v3, v4}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDirectorySearchMode(I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v3, v5}, Lcom/android/contacts/list/ContactEntryListFragment;->setMultiSelectEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x15e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getActionCode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setupActionListener()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v2, 0x1e

    const/16 v5, 0x15

    const/4 v4, 0x0

    const/4 v3, -0x2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMode:I

    :cond_0
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    const v0, 0x7f04006d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->configureListFragment()V

    const v0, 0x7f0d00e8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchViewLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setUpActionBar()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    const/16 v1, 0x15e

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mCustomActionView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v3, v3, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchViewLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0d00ea

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0a01ac

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    :cond_1
    :goto_0
    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setButtonClickable(Z)V

    return-void

    :cond_2
    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    const/16 v1, 0x15f

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mCustomActionView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v3, v3, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchViewLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

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
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSearchMode(Z)V

    return v2

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setupActionListener()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setOnActionBarButtonUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;)V

    :cond_0
    return-void
.end method
