.class public Lcom/android/contacts/list/PostalAddressPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "PostalAddressPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

.field protected mHasGalSearchData:Z

.field protected mHasPhoneData:Z

.field protected mHasPhoneSearchData:Z

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneData:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneSearchData:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasGalSearchData:Z

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setQuickContactEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setDirectorySearchMode(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/PostalAddressPickerFragment;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private configureEmptyView(Z)V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mEmptyView:Landroid/view/View;

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

.method private pickPostalAddress(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnPostalAddressPickerActionListener;->onPickPostalAddressAction(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/contacts/list/PostalAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/PostalAddressListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/PostalAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/PostalAddressListAdapter;->setDisplayPhotos(Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const v3, 0x7f040045

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d010e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0d0229

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v3, 0x7f0d00ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v3, 0x7f0d0198

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v5}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v4, 0x7f0a01ac

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/contacts/list/PostalAddressPickerFragment$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/PostalAddressPickerFragment$1;-><init>(Lcom/android/contacts/list/PostalAddressPickerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-object v2
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mEmptyView:Landroid/view/View;

    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/PostalAddressListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/PostalAddressListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->pickPostalAddress(Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->getContactMethodUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->pickPostalAddress(Landroid/net/Uri;)V

    goto :goto_0
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

    iget-boolean v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    if-ne v1, v6, :cond_4

    iput v5, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mDirectoryListStatus:I

    iget-object v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->startLoading()V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_3

    if-eqz p2, :cond_d

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_d

    iput-boolean v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneData:Z

    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneData:Z

    if-nez v2, :cond_e

    :goto_3
    invoke-direct {p0, v3}, Lcom/android/contacts/list/PostalAddressPickerFragment;->configureEmptyView(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/PostalAddressPickerFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    if-nez v1, :cond_6

    iput-boolean v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneSearchData:Z

    :goto_4
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getDirectorySearchMode()I

    move-result v0

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_9

    iput v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mDirectoryListStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_5
    :goto_5
    iget-boolean v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneSearchData:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasGalSearchData:Z

    if-nez v2, :cond_a

    move v2, v3

    :goto_6
    invoke-direct {p0, v2}, Lcom/android/contacts/list/PostalAddressPickerFragment;->configureEmptyView(Z)V

    goto :goto_1

    :cond_6
    iput-boolean v3, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasGalSearchData:Z

    goto :goto_4

    :cond_7
    if-nez v1, :cond_8

    iput-boolean v4, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_4

    :cond_8
    iput-boolean v4, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasGalSearchData:Z

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->startLoading()V

    goto :goto_5

    :cond_a
    move v2, v4

    goto :goto_6

    :cond_b
    iput v4, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mDirectoryListStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iget-boolean v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mFakeQueryStatus:I

    if-ne v2, v3, :cond_c

    iput v5, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mFakeQueryStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->startFullQuery()V

    goto :goto_1

    :cond_c
    iget v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mFakeQueryStatus:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mFakeQueryStatus:I

    goto :goto_1

    :cond_d
    iput-boolean v4, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mHasPhoneData:Z

    goto :goto_2

    :cond_e
    move v3, v4

    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/PostalAddressPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public setOnPostalAddressPickerActionListener(Lcom/android/contacts/list/OnPostalAddressPickerActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

    return-void
.end method
