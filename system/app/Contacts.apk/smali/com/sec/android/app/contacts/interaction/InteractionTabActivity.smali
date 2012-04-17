.class public Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "InteractionTabActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
.implements Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;,
        Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;
    }
.end annotation


# static fields
.field private static SEND_ALL_NAMECARDS:I

.field private static SEND_INDIVIDUAL_NAMECARDS:I

.field private static mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

.field private static sendType:I


# instance fields
.field private final CONTACTS_TAG:Ljava/lang/String;

.field private final FAVORITES_TAG:Ljava/lang/String;

.field private final GROUPS_TAG:Ljava/lang/String;

.field private final LOGS_TAG:Ljava/lang/String;

.field count:I

.field private mActionBar:Landroid/app/ActionBar;

.field protected mActionCode:I

.field private mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

.field private mContactsMode:Z

.field private mCurrentCount:I

.field private mDisplayTab:Z

.field protected mExtraValue:I

.field private mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

.field private mFavoritesMode:Z

.field private mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

.field protected mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsRecreatedInstance:Z

.field private mLimitedCount:I

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

.field protected mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSpeedDial:Z

.field public mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

.field protected saveMenuItem:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_ALL_NAMECARDS:I

    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_INDIVIDUAL_NAMECARDS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->count:I

    const-string v0, "tab-contacts"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->CONTACTS_TAG:Ljava/lang/String;

    const-string v0, "tab-groups"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->GROUPS_TAG:Ljava/lang/String;

    const-string v0, "tab-logs"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->LOGS_TAG:Ljava/lang/String;

    const-string v0, "tab-favorites"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->FAVORITES_TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_INDIVIDUAL_NAMECARDS:I

    return v0
.end method

.method private actionbarTitle()Ljava/lang/String;
    .locals 5

    const v4, 0x7f0a0010

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v2, v1

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
    .end sparse-switch
.end method

.method private configureContactsFragments()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setMultiSelectEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSearchMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setLegacyCompatibilityMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setMMSinformation(III)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSpeedDial(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setDirectorySearchMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setDirectoryResultLimit(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setDirectorySearchMode(I)V

    goto :goto_0
.end method

.method private configureFavoritesFragments()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setMultiSelectEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/4 v2, -0x4

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSearchMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setLegacyCompatibilityMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setMMSinformation(III)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setDirectorySearchMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setDirectoryResultLimit(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setDirectorySearchMode(I)V

    goto :goto_0
.end method

.method private configureFragments(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V
    .locals 3

    const-string v1, "InteractionTabActivity"

    const-string v2, "configureFragments"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureContactsFragments()V

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureFavoritesFragments()V

    :cond_0
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v1, :cond_1

    move-object v0, p1

    :cond_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setCurrentTab(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    :cond_2
    return-void
.end method

.method private createViewsAndFragments(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f0d00e6

    const-string v2, "InteractionTabActivity"

    const-string v3, "createViewsAndFragments"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarsetup()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    sput-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setContactListFilterController(Lcom/android/contacts/list/ContactListFilterController;)V

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getCurrentTab()Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "tab-contacts"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_2

    const-string v2, "tab-groups"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    const-string v2, "tab-logs"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    const-string v2, "tab-favorites"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-nez v2, :cond_4

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_3

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-direct {v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    const-string v3, "tab-contacts"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    const-string v3, "tab-favorites"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    const-string v3, "tab-groups"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    const-string v3, "tab-logs"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureFragments(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    const-string v3, "tab-favorites"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    const-string v3, "tab-contacts"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2, v4, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1
.end method

.method private hideSoftKeyboard()V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
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

    const/4 v5, 0x1

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

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private updateFragmentVisibility()V
    .locals 6

    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->$SwitchMap$com$sec$android$app$contacts$interaction$InteractionActionBarAdapter$TabState:[I

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :goto_1
    return-void

    :pswitch_0
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility->GROUPS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->setMMSinformation(III)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->clearSelectedArray()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->reloadData()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->clearSelectedArray()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->reloadData()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto :goto_0

    :pswitch_1
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility->CONTACTS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "InteractionTabActivity"

    const-string v3, "mContactsFragment null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureContactsFragments()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSearchQuery()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->clearSelectedArray()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->reloadData()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility->FAVORITES"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "InteractionTabActivity"

    const-string v3, "mFavoritesFragment null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureFavoritesFragments()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSearchQuery()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->clearSelectedArray()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->reloadData()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility->LOGS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->clearSelectedArray()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->reloadData()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->clearSelectedArray()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->reloadData()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->clearSelectedArray()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public actionbarsetup()Landroid/app/ActionBar;
    .locals 10

    const/16 v9, 0x1e

    const/4 v8, -0x2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v6, 0x7f040018

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0d009e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->saveMenuItem:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->saveMenuItem:Landroid/view/View;

    new-instance v7, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v6, 0x7f0d009f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setDoneButtonClickable(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, ""

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v6, "he"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "iw"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x13

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->saveMenuItem:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_0

    :pswitch_1
    if-ne p2, v3, :cond_0

    const-string v0, "namecard_string"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "namecard_result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "InteractionTabActivity"

    const-string v1, "onAttachFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_a

    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsMode:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesMode:Z

    if-eqz v0, :cond_4

    :cond_1
    const-string v0, "InteractionTabActivity"

    const-string v1, "mContactsFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsMode:Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setupActionListener()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->FAVORITES:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesMode:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsMode:Z

    if-eqz v0, :cond_2

    :cond_6
    const-string v0, "InteractionTabActivity"

    const-string v1, "mFavoritesFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesMode:Z

    goto :goto_0

    :cond_7
    const-string v0, "InteractionTabActivity"

    const-string v1, "mContactsFragment-single"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    if-eqz v0, :cond_9

    const-string v0, "InteractionTabActivity"

    const-string v1, "mGroupsFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    goto :goto_1

    :cond_9
    instance-of v0, p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    if-eqz v0, :cond_3

    const-string v0, "InteractionTabActivity"

    const-string v1, "mCallLogFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setupActionListener()V

    goto :goto_1
.end method

.method public onContactListFilterChanged()V
    .locals 2

    const-string v0, "InteractionTabActivity"

    const-string v1, "notifyContactListFilterChanged -> onContactListFilterChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0xfa

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "InteractionTabActivity"

    const-string v3, "onCreate"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/contacts/list/ContactListFilterController;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactListFilterController;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1, p0}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-eqz v1, :cond_1

    const-string v1, "InteractionTabActivity"

    const-string v2, "mIsRecreatedInstance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "actionCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const-string v1, "extraValue"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const-string v1, "maxRecipientCount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    const-string v1, "existingRecipientCount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    const-string v1, "from_speed_dial"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    const-string v1, "displayTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    :goto_1
    const-string v1, "InteractionTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActionCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "InteractionTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLimitedCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "InteractionTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    :goto_2
    return-void

    :cond_0
    move v1, v2

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const-string v1, "InteractionTabActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mExtraValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v3, 0x96

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "maxRecipientCount"

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "existingRecipientCount"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "from_speed_dial"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getTabMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    goto/16 :goto_1

    :cond_3
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v3, 0xa0

    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "maxRecipientCount"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto :goto_3

    :cond_4
    sget v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    sget v3, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_ALL_NAMECARDS:I

    if-ne v1, v3, :cond_5

    const v1, 0xffff

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "maxRecipientCount"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto :goto_3

    :cond_6
    const v1, 0x7f04003b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->createViewsAndFragments(Landroid/os/Bundle;)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    const-string v0, "InteractionTabActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "InteractionTabActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSearchMode(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->FAVORITES:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSearchMode(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    :goto_3
    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSearchMode(Z)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "InteractionTabActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setListener(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;)V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateFragmentVisibility()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "InteractionTabActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "extraValue"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maxRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "existingRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "from_speed_dial"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "displayTab"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "currentTab"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSelectedTabChanged(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V
    .locals 2

    const-string v0, "InteractionTabActivity"

    const-string v1, "onSelectedTabChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateFragmentVisibility()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setDoneButtonClickable(Z)V

    return-void
.end method

.method public returnPickPhoneResult(Landroid/net/Uri;)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getContentResolver()Landroid/content/ContentResolver;

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

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_result"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "index"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

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

    invoke-virtual {v0, v10}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    return-void
.end method

.method public returnPickPhoneResult(Landroid/net/Uri;J)V
    .locals 7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "result"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "datatype"

    const-string v4, "contact"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "has_result"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "index"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "index"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "phone_data_id"

    invoke-virtual {v0, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    return-void
.end method

.method public returnPickerResult(Landroid/net/Uri;)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "CONTACT_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public returnPickerResult(Ljava/util/HashMap;)V
    .locals 7
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

    const-string v5, ";"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

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

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    return-void
.end method

.method public sendVcardByMultiUriIntent(Ljava/util/HashMap;)V
    .locals 4
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xfa

    if-ne v0, v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled action code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendVcardIntent(Ljava/util/HashMap;)V
    .locals 4
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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xfa

    if-ne v1, v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    :goto_1
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled action code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setDoneButtonClickable(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->saveMenuItem:Landroid/view/View;

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

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
