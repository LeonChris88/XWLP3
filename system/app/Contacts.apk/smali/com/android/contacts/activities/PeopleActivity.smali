.class public Lcom/android/contacts/activities/PeopleActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/contacts/activities/ActionBarAdapter$Listener;
.implements Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
.implements Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/PeopleActivity$3;,
        Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;,
        Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;,
        Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;,
        Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;
    }
.end annotation


# static fields
.field private static final sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

.field private mAddGroupImageView:Landroid/view/View;

.field private mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBrowserView:Landroid/view/View;

.field private mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

.field private mContactDetailUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

.field private mDetailsView:Landroid/view/View;

.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field private mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private mFavoritesView:Landroid/view/View;

.field private mFragmentInitialized:Z

.field private mFrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field private mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

.field private final mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

.field private mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstanceId:I

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsRecreatedInstance:Z

.field private mOptionsMenuContactsAvailable:Z

.field private mProviderStatus:I

.field private mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

.field private mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

.field private final mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity;->sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:I

    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$1;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/android/contacts/activities/PeopleActivity;->sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mInstanceId:I

    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    new-instance v0, Lcom/android/contacts/list/ContactListFilterController;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactListFilterController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    new-instance v0, Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ProviderStatusLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactTileListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setupContactDetailFragment(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/activities/PeopleActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setupGroupDetailFragment(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V

    return-void
.end method

.method private areContactWritableAccountsAvailable()Z
    .locals 1

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->areContactWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private areGroupWritableAccountsAvailable()Z
    .locals 1

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->areGroupWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private clearSearch()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->loadSearch(Ljava/lang/String;)V

    return-void
.end method

.method private configureContactListFragment()V
    .locals 7

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->shouldShowSearchResult()Z

    move-result v0

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSearchMode(Z)V

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isVisibleScrollbarEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v0, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVerticalScrollbarPosition(I)V

    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionVisible(Z)V

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v1, :cond_7

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v5

    if-nez v5, :cond_7

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQuickContactEnabled(Z)V

    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isVisibleTwIndexScrollbarEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldShowCustomSearchResult()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->hideTwIndexScrollbar()V

    :goto_4
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_5

    move v5, v3

    :cond_5
    invoke-virtual {v2, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVerticalTwIndexScrollbarPosition(I)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showTwIndexScrollbar()V

    goto :goto_4

    :cond_7
    move v3, v4

    goto :goto_3
.end method

.method private configureContactListFragmentForRequest()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSearchMode(Z)V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    goto :goto_0
.end method

.method private configureFragments(Z)V
    .locals 6

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    const/4 v2, 0x0

    :cond_1
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureContactListFragmentForRequest()V

    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureContactListFragment()V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureGroupListFragment()V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    return-void

    :sswitch_0
    const/4 v4, -0x2

    invoke-static {v4}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    sget-object v3, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    goto :goto_0

    :sswitch_1
    const/4 v4, -0x5

    invoke-static {v4}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    sget-object v3, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    goto :goto_0

    :sswitch_2
    sget-object v3, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    goto :goto_0

    :sswitch_3
    sget-object v3, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    goto :goto_0

    :sswitch_4
    sget-object v3, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x11 -> :sswitch_1
        0x14 -> :sswitch_4
        0x1e -> :sswitch_2
        0x28 -> :sswitch_2
        0x32 -> :sswitch_2
        0x8c -> :sswitch_3
    .end sparse-switch
.end method

.method private configureGroupListFragment()V
    .locals 3

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setVerticalScrollbarPosition(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectionVisible(Z)V

    return-void

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private createViewsAndFragments(Landroid/os/Bundle;)V
    .locals 12

    const/4 v3, 0x0

    const/4 v11, 0x1

    const v2, 0x7f0d01c0

    const v0, 0x7f04009c

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v10

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0d01c8

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const v0, 0x7f0d01c3

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const v0, 0x7f0d01c4

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setOnContactListActionListener(Lcom/android/contacts/list/OnContactBrowserActionListener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setListener(Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v10, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v10, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v10, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0d01c7

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    const v0, 0x7f0d01c5

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    const v0, 0x7f0d01c2

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    const v0, 0x7f0d01c9

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v11}, Lcom/android/contacts/list/ContactTileListFragment;->enableQuickContact(Z)V

    const v0, 0x7f0d01c6

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactLoaderFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V

    const v0, 0x7f0d0181

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupDetailFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->setListener(Lcom/android/contacts/group/GroupDetailFragment$Listener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0, v11}, Lcom/android/contacts/group/GroupDetailFragment;->setQuickContact(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v10, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v10, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v1, 0x7f0d00a9

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;

    invoke-direct {v5, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    :cond_2
    invoke-virtual {v10}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v9}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v11}, Lcom/android/contacts/list/ContactTileListFragment;->enableQuickContact(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STARRED_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    :goto_1
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    return-void

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setAdapter(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setOnPageChangeListener(Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;)V

    const-string v7, "tab-pager-favorite"

    const-string v6, "tab-pager-all"

    const-string v8, "tab-pager-groups"

    const-string v0, "tab-pager-favorite"

    invoke-virtual {v9, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const-string v0, "tab-pager-all"

    invoke-virtual {v9, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const-string v0, "tab-pager-groups"

    invoke-virtual {v9, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactTileListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const-string v1, "tab-pager-favorite"

    invoke-virtual {v10, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const-string v1, "tab-pager-all"

    invoke-virtual {v10, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    const-string v1, "tab-pager-groups"

    invoke-virtual {v10, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    goto/16 :goto_1
.end method

.method private deleteSelection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isOptionsMenuChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private loadSearch(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    return-void
.end method

.method private processIntent(Z)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const-string v1, "PeopleActivity"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PeopleActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " processIntent: forNewIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setResult(I)V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x8c

    if-ne v1, v2, :cond_3

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setCustomUnavailableViewForEachTab(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZ)V

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private setIntentForGroupSubPhonebook(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    const-string v1, "filterType"

    iget v2, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "accountType"

    iget-object v2, v0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "accountName"

    iget-object v2, v0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "groupTitle"

    iget-object v2, v0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "groupId"

    iget-wide v2, v0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "systemId"

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilter;->groupSystemId:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private setupContactDetailFragment(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    return-void
.end method

.method private setupGroupDetailFragment(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->loadGroup(Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    return-void
.end method

.method private showContactsUnavailableFragmentIfNecessary()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusLoader;->getProviderStatus()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:I

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setCustomUnavailableViewForEachTab(I)V

    if-eq v0, v6, :cond_0

    const v0, 0x7f0d010f

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d01c1

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:I

    if-nez v2, :cond_4

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setVisibility(I)V

    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEnabled(Z)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactWritableAccountsAvailable()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Lcom/android/contacts/util/AccountPromptUtils;->shouldShowAccountPrompt(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/android/contacts/util/AccountPromptUtils;->launchAccountPrompt(Landroid/app/Activity;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEnabled(Z)V

    :cond_6
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-nez v2, :cond_8

    new-instance v2, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v2}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setProviderStatusLoader(Lcom/android/contacts/list/ProviderStatusLoader;)V

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    new-instance v3, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0d01bf

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setVisibility(I)V

    if-eqz v1, :cond_7

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsUnavailableFragment;->update()V

    goto :goto_2
.end method

.method private showEmptyStateForTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/contacts/activities/PeopleActivity$3;->$SwitchMap$com$android$contacts$activities$ActionBarAdapter$TabState:[I

    invoke-virtual {p1}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0a0060

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0a0053

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0054

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0a0052

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateFragmentsVisibility()V
    .locals 10

    const/16 v9, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v2

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v5, v6}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->setSearchMode(Z)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomSearchBarVisibility(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    invoke-direct {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V

    sget-object v5, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    if-ne v2, v5, :cond_1

    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v5

    if-nez v5, :cond_7

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    :cond_1
    iget v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:I

    const/4 v8, 0x4

    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v8}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v8}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v8

    if-nez v8, :cond_2

    move v7, v6

    :cond_2
    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZ)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->isSearchMode()Z

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v5, v7}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->setSearchMode(Z)V

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v3

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getCurrentItem()I

    move-result v5

    if-eq v5, v3, :cond_5

    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-nez v4, :cond_6

    move v5, v6

    :goto_3
    invoke-virtual {v8, v3, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItem(IZ)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    :cond_5
    sget-object v5, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    if-ne v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomSearchBarVisibility(Z)V

    goto :goto_0

    :cond_6
    move v5, v7

    goto :goto_3

    :cond_7
    move v5, v7

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v2, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    :cond_9
    sget-object v5, Lcom/android/contacts/activities/PeopleActivity$3;->$SwitchMap$com$android$contacts$activities$ActionBarAdapter$TabState:[I

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    :goto_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget-object v5, Lcom/android/contacts/activities/PeopleActivity$3;->$SwitchMap$com$android$contacts$activities$ActionBarAdapter$TabState:[I

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    :goto_5
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_a
    invoke-direct {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V

    goto :goto_2

    :pswitch_0
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :pswitch_1
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v8

    if-nez v8, :cond_b

    :goto_6
    invoke-virtual {v5, v6}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    goto :goto_4

    :cond_b
    move v6, v7

    goto :goto_6

    :pswitch_2
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :pswitch_3
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto :goto_5

    :pswitch_4
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_5

    :pswitch_5
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public areContactsAvailable()Z
    .locals 2

    iget v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createNewGroupWithAccountDisambiguation()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EditMode"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    return-object v0
.end method

.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public isOptionsMenuChanged()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupDetailFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAction(Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/contacts/activities/PeopleActivity$3;->$SwitchMap$com$android$contacts$activities$ActionBarAdapter$Listener$Action:[I

    invoke-virtual {p1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkonwn ActionBarAdapter action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->clearSearch()V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->loadSearch(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->requestDeleteContacts()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-ne p2, v1, :cond_0

    const-string v0, "contactListFilter"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilterController;->selectCustomFilter()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    goto :goto_0

    :sswitch_1
    if-ne p2, v1, :cond_0

    const-string v1, "onlyContactWithPhonesChanged"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->reloadData()V

    goto :goto_0

    :sswitch_2
    if-ne p2, v1, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectedUri(Landroid/net/Uri;)V

    goto :goto_0

    :sswitch_3
    if-ne p2, v1, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, p3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onPickerResult(Landroid/content/Intent;)V

    :cond_2
    :sswitch_4
    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "smsto"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "sendto"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_5
    if-ne p2, v1, :cond_0

    const-string v1, "result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    const-string v0, ""

    aput-object v0, v4, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v4, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0xe -> :sswitch_4
        0x2711 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAddFavoritesRequested()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.contacts.action.FAVORITE_ADD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3

    instance-of v0, p1, Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setProviderStatusLoader(Lcom/android/contacts/list/ProviderStatusLoader;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isContactsDeleting(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isTwLauncherAlive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->moveTaskToBack(Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    goto :goto_0
.end method

.method public onContactListFilterChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x0

    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ContactsPerf"

    const-string v2, "PeopleActivity.onCreate start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->processIntent(Z)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->createViewsAndFragments(Landroid/os/Bundle;)V

    const-string v0, "ContactsPerf"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ContactsPerf"

    const-string v1, "PeopleActivity.onCreate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a023b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a023e

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f10

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f0d023f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAddGroupImageView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAddGroupImageView:Landroid/view/View;

    new-instance v2, Lcom/android/contacts/activities/PeopleActivity$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/PeopleActivity$2;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAddGroupImageView:Landroid/view/View;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDeleteFavoritesRequested()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.contacts.action.FAVORITE_DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onDeleteRequested(Z)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->setDeleteMode(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteMode(Z)V

    iget v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/String;

    new-array v3, v2, [I

    aput v1, v3, v4

    invoke-direct {v0, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->deleteSelection()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->processIntent(Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "joinCompleted"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "joinFail"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->showDialog(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldShowCustomSearchResult()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    invoke-direct {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto :goto_0

    :cond_4
    const-string v0, "deleteCompleted"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->onDeleteCompleted()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isUpShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onBackPressed()V

    goto :goto_0

    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":android:show_fragment"

    const-class v3, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, ":android:show_fragment_title"

    const v3, 0x7f0a01a7

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a00fe

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->show(Landroid/app/FragmentManager;I)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x2711

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onSearchRequested()Z

    goto :goto_0

    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->createNewGroupWithAccountDisambiguation()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    :sswitch_7
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SYNC_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "authorities"

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "com.android.contacts"

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.contacts.action.GROUP_DELETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto/16 :goto_0

    :sswitch_a
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_b
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_TAB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "additional"

    const-string v3, "email-multi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setIntentForGroupSubPhonebook(Landroid/content/Intent;)V

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_c
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_TAB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "additional"

    const-string v3, "email-phone-multi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setIntentForGroupSubPhonebook(Landroid/content/Intent;)V

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_d
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onAddFavoritesRequested()V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteFavoritesRequested()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d0230 -> :sswitch_3
        0x7f0d0231 -> :sswitch_4
        0x7f0d0232 -> :sswitch_5
        0x7f0d0233 -> :sswitch_8
        0x7f0d0234 -> :sswitch_6
        0x7f0d0235 -> :sswitch_9
        0x7f0d0236 -> :sswitch_7
        0x7f0d0237 -> :sswitch_a
        0x7f0d0238 -> :sswitch_b
        0x7f0d0239 -> :sswitch_c
        0x7f0d023a -> :sswitch_2
        0x7f0d023b -> :sswitch_1
        0x7f0d023c -> :sswitch_d
        0x7f0d023d -> :sswitch_e
        0x7f0d023e -> :sswitch_f
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:I

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ProviderStatusLoader;->setProviderStatusListener(Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;)V

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static/range {p0 .. p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const v1, 0x7f0d0231

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v1, 0x7f0d023a

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v1, 0x7f0d0230

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v1, 0x7f0d0234

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v1, 0x7f0d0236

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const v1, 0x7f0d023b

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v1, 0x7f0d0233

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const v1, 0x7f0d0235

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const v1, 0x7f0d0237

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const v1, 0x7f0d0238

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const v1, 0x7f0d0239

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const v1, 0x7f0d023c

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const v1, 0x7f0d023d

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v1, 0x7f0d023e

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    const v1, 0x7f0d0232

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_3

    const v1, 0x7f0d023f

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    sget-object v16, Lcom/android/contacts/activities/PeopleActivity$3;->$SwitchMap$com$android$contacts$activities$ActionBarAdapter$TabState:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v14, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :pswitch_1
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_2
    invoke-interface {v10, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_3
    invoke-interface {v12, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_4
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_7
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onProviderStatusChange()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->showContactsUnavailableFragmentIfNecessary()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ProviderStatusLoader;->setProviderStatusListener(Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;)V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->showContactsUnavailableFragmentIfNecessary()V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setOnPageChangeListener(Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->shouldShowContactTips(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->show(Landroid/app/FragmentManager;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setOnPageChangeListener(Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;)V

    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    goto :goto_0
.end method

.method public onSelectedTabChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v2, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->onStart(Z)V

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s@%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mInstanceId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
