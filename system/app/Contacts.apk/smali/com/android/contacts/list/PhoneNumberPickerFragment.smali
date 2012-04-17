.class public Lcom/android/contacts/list/PhoneNumberPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeaderContainer:Landroid/view/View;

.field private mAccountFilterHeaderView:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field protected mHasGalSearchData:Z

.field protected mHasPhoneData:Z

.field protected mHasPhoneSearchData:Z

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

.field private mLoaderStarted:Z

.field private mPaddingView:Landroid/view/View;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShortcutAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneData:Z

    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneSearchData:Z

    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasGalSearchData:Z

    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;Lcom/android/contacts/list/PhoneNumberPickerFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setQuickContactEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setDirectorySearchMode(I)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSweepActionEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setFakeQueryModeEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/list/PhoneNumberPickerFragment;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private configureEmptyView(Z)V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEmptyView:Landroid/view/View;

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

.method private updateFilterHeaderView()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0063

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0064

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0062

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setDisplayPhotos(Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
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

    iput-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

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

    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v5}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v4, 0x7f0a01ac

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;-><init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-object v2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEmptyView:Landroid/view/View;

    const v1, 0x7f040025

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0112

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0111

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->pickPhoneNumber(Landroid/net/Uri;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->getPhoneUri(I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was clicked before adapter is ready. Ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
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

    iget-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    if-ne v1, v6, :cond_4

    iput v5, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mDirectoryListStatus:I

    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->startLoading()V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_3

    if-eqz p2, :cond_d

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_d

    iput-boolean v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneData:Z

    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneData:Z

    if-nez v2, :cond_e

    :goto_3
    invoke-direct {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->configureEmptyView(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    if-nez v1, :cond_6

    iput-boolean v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneSearchData:Z

    :goto_4
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getDirectorySearchMode()I

    move-result v0

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_9

    iput v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mDirectoryListStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_5
    :goto_5
    iget-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneSearchData:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasGalSearchData:Z

    if-nez v2, :cond_a

    move v2, v3

    :goto_6
    invoke-direct {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->configureEmptyView(Z)V

    goto :goto_1

    :cond_6
    iput-boolean v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasGalSearchData:Z

    goto :goto_4

    :cond_7
    if-nez v1, :cond_8

    iput-boolean v4, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_4

    :cond_8
    iput-boolean v4, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasGalSearchData:Z

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->startLoading()V

    goto :goto_5

    :cond_a
    move v2, v4

    goto :goto_6

    :cond_b
    iput v4, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mDirectoryListStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iget-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryStatus:I

    if-ne v2, v3, :cond_c

    iput v5, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->startFullQuery()V

    goto :goto_1

    :cond_c
    iget v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryStatus:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryStatus:I

    goto :goto_1

    :cond_d
    iput-boolean v4, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneData:Z

    goto :goto_2

    :cond_e
    move v3, v4

    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onHomeInActionBarSelected()V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    return-void
.end method

.method public pickPhoneNumber(Landroid/net/Uri;)V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v1, p1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_1
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mLoaderStarted:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->reloadData()V

    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    goto :goto_0
.end method

.method public setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    return-void
.end method

.method public setShortcutAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 7

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->isEmpty()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0d00ed

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0d00eb

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_1
.end method

.method protected startLoading()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mLoaderStarted:Z

    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    return-void
.end method
