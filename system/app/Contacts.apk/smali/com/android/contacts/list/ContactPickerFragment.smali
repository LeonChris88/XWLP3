.class public Lcom/android/contacts/list/ContactPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "ContactPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;"
    }
.end annotation


# instance fields
.field private OnlyPhoneNumberProjection:Z

.field public mAttachPhotoMode:Z

.field private mCounterHeaderView:Landroid/view/View;

.field private mCreateContactEnabled:Z

.field private mEditMode:Z

.field private mEmptyView:Landroid/view/View;

.field private mFinishActivityonCreateComplete:Z

.field protected mHasGalSearchData:Z

.field protected mHasPhoneData:Z

.field protected mHasPhoneSearchData:Z

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

.field public mRingtoneMode:Z

.field protected mSearchView:Landroid/widget/SearchView;

.field private mShortcutRequested:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneSearchData:Z

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasGalSearchData:Z

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setQuickContactEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setDirectorySearchMode(I)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setSweepActionEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setFinishActivityonCreateComplete(Z)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setFakeQueryModeEnabled(Z)V

    return-void
.end method

.method private configureEmptyView(Z)V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isCreateContactEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x2

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->setQuickContactEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setPhoneNumbersOnly(Z)V

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setRingToneMode(Z)V

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setAttachPhotoMode(Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public createNewContact()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFinishActivityonCreateComplete:Z

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onCreateNewContactAction(Z)V

    return-void
.end method

.method public editContact(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onEditContactAction(Landroid/net/Uri;)V

    return-void
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const v3, 0x7f04003c

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d00e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v3, 0x7f0d00ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v4, 0x7f0a01ac

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/contacts/list/ContactPickerFragment$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactPickerFragment$1;-><init>(Lcom/android/contacts/list/ContactPickerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setVisibility(I)V

    :goto_0
    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/contacts/list/ContactPickerFragment$2;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactPickerFragment$2;-><init>(Lcom/android/contacts/list/ContactPickerFragment;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_0

    :sswitch_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getHideCreateLabel()Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v3, Lcom/android/contacts/list/ContactPickerFragment$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/ContactPickerFragment$3;-><init>(Lcom/android/contacts/list/ContactPickerFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public isCreateContactEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const-string v4, "ContactPickerFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateLoader(id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    new-instance v2, Lcom/android/contacts/list/DirectoryListLoader;

    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/contacts/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDirectoryLoader(Lcom/android/contacts/list/DirectoryListLoader;)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->createCursorLoader()Landroid/content/CursorLoader;

    move-result-object v2

    if-eqz p2, :cond_2

    const-string v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v2, v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    iget-boolean v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ContactPickerFragment"

    const-string v5, "onCreateLoader(), set fake mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    invoke-virtual {v2}, Landroid/content/CursorLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " LIMIT "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIMIT 30"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0400d2

    invoke-virtual {p1, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCounterHeaderView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCounterHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->editContact(Landroid/net/Uri;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    if-eqz v2, :cond_2

    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->pickContact(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    if-ne v1, v6, :cond_4

    iput v5, p0, Lcom/android/contacts/list/ContactPickerFragment;->mDirectoryListStatus:I

    iget-object v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->startLoading()V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_3

    if-eqz p2, :cond_d

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_d

    iput-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    if-nez v2, :cond_e

    :goto_3
    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->configureEmptyView(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/ContactPickerFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    if-nez v1, :cond_6

    iput-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneSearchData:Z

    :goto_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getDirectorySearchMode()I

    move-result v0

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_9

    iput v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mDirectoryListStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_5
    :goto_5
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneSearchData:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasGalSearchData:Z

    if-nez v2, :cond_a

    move v2, v3

    :goto_6
    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->configureEmptyView(Z)V

    goto :goto_1

    :cond_6
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasGalSearchData:Z

    goto :goto_4

    :cond_7
    if-nez v1, :cond_8

    iput-boolean v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_4

    :cond_8
    iput-boolean v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasGalSearchData:Z

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->startLoading()V

    goto :goto_5

    :cond_a
    move v2, v4

    goto :goto_6

    :cond_b
    iput v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mDirectoryListStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    if-ne v2, v3, :cond_c

    iput v5, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->startFullQuery()V

    goto :goto_1

    :cond_c
    iget v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    goto :goto_1

    :cond_d
    iput-boolean v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    goto :goto_2

    :cond_e
    move v3, v4

    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "editMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "createContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "shortcutRequested"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "onlyphonnumberprojection"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/list/OnContactPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "editMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    const-string v0, "createContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    const-string v0, "shortcutRequested"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    const-string v0, "onlyphonnumberprojection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    goto :goto_0
.end method

.method public setAttachPhotoMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    return-void
.end method

.method public setCreateContactEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    return-void
.end method

.method public setFinishActivityonCreateComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFinishActivityonCreateComplete:Z

    return-void
.end method

.method public setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    return-void
.end method

.method public setOnlyPhoneNumberProjection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    return-void
.end method

.method public setRingToneMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    return-void
.end method

.method public setShortcutRequested(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    return-void
.end method
