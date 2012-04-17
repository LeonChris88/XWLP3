.class public abstract Lcom/android/contacts/list/ContactEntryListFragment;
.super Landroid/app/Fragment;
.source "ContactEntryListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">",
        "Landroid/app/Fragment;",
        "Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;",
        "Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

.field private static sIsTwoPaneMode:Z


# instance fields
.field protected mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field protected mContext:Landroid/content/Context;

.field private mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

.field private mDarkTheme:Z

.field private mDelayedDirectorySearchHandler:Landroid/os/Handler;

.field protected mDeleteMode:Z

.field private mDetailsLoaded:Z

.field protected mDirectoryListStatus:I

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mEmptyView:Lcom/android/contacts/ContactListEmptyView;

.field protected mEnabled:Z

.field protected mFakeQueryModeEnabled:Z

.field protected mFakeQueryStatus:I

.field private mForceLoad:Z

.field private mIncludeProfile:Z

.field private mLegacyCompatibility:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mLoadPriorityDirectoriesOnly:Z

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mMultiSelectEnabled:Z

.field private mPhotoLoaderEnabled:Z

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

.field private mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field protected mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchMode:Z

.field private mSectionHeaderDisplayEnabled:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

.field private mSweepActionEnabled:Z

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mTwIndexLayout:Landroid/widget/LinearLayout;

.field private mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

.field protected mUserProfileExists:Z

.field private mVerticalScrollbarPosition:I

.field private mVerticalTwIndexScrollbarPosition:I

.field private mView:Landroid/view/View;

.field private mVisibleScrollbarEnabled:Z

.field private mVisibleTwIndexScrollbarEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDetailsLoaded:Z

    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionEnabled:Z

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDeleteMode:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$1;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$3;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactEntryListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method private configureVerticalScrollbar()V
    .locals 7

    const v6, 0x7f080022

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollEnabled(Z)V

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollAlwaysVisible(Z)V

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollbarPosition(I)V

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/high16 v5, 0x200

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setScrollBarStyle(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-ne v4, v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPadding(IIII)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_1
.end method

.method private configureVerticalTwIndexScrollbar()V
    .locals 8

    const v7, 0x7f080022

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleTwIndexScrollbarEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    :goto_0
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollEnabled(Z)V

    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollAlwaysVisible(Z)V

    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollbarPosition(I)V

    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/high16 v6, 0x200

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setScrollBarStyle(I)V

    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v0, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->showTwIndexScrollbar()V

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-ne v4, v3, :cond_4

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_2
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPadding(IIII)V

    :cond_1
    return-void

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideTwIndexScrollbar()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_2
.end method

.method private hideSoftKeyboard()V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private loadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private reloadDataDirectoryPartition(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->onDataReloadDirectoryPartition(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoadingDirectoryPartition(I)V

    return-void
.end method

.method private removePendingDirectorySearchRequests()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private startLoadingDirectoryPartition(I)V
    .locals 6

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->loadDirectoryPartition(ILcom/android/contacts/list/DirectoryPartition;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->loadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "directoryId"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method private updateSweepActionFeasibility()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSweepActionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureSweepActionCallbackAndListener()V

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected addTwIndexScroll(Landroid/database/Cursor;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getSortOrder()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "sort_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    sget-object v2, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    sput-object v1, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    :cond_1
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    const v2, 0x7f0a0202

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    sput-object v1, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    sget-object v1, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSubscrollLimit(I)V

    const-string v0, ""

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setHandlePosition(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    sget-object v1, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setmIsFavoriteContactMode(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    new-instance v1, Lcom/android/contacts/list/ContactEntryListFragment$4;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactEntryListFragment$4;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;)V

    :cond_3
    return-void

    :pswitch_0
    const-string v0, "sort_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const-string v0, "sort_key_alt"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v1, "ContactEntryListFragment"

    const-string v2, "Observer TwCursorIndexer was not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setHandlePosition(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected completeRestoreInstanceState()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDirectorySearchMode(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDirectoryResultLimit(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mMultiSelectEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setMultiSelectEnabled(Z)V

    goto :goto_0
.end method

.method protected configurePhotoLoader()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    :cond_2
    return-void
.end method

.method protected configureSweepActionCallbackAndListener()V
    .locals 0

    return-void
.end method

.method public createCursorLoader()Landroid/content/CursorLoader;
    .locals 7

    const/4 v2, 0x0

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createCursorLoaderToSupportSimContacts()Landroid/content/CursorLoader;
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createCursorLoader()Landroid/content/CursorLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$2;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/list/ContactEntryListFragment$2;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    return-object v0
.end method

.method protected getContactNameDisplayOrder()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    return-object v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    return v0
.end method

.method public getFakeQueryStatus()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    return v0
.end method

.method public getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    return v0
.end method

.method protected final getSweepActionBarCallBack()Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hideTwIndexScrollbar()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public isFakeQueryModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    return v0
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoadingDirectoryList()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingDirectoryList()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiSelectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mMultiSelectEnabled:Z

    return v0
.end method

.method public isPhotoLoaderEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    return v0
.end method

.method public isSweepActionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionEnabled:Z

    return v0
.end method

.method public isVisibleScrollbarEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    return v0
.end method

.method public isVisibleTwIndexScrollbarEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleTwIndexScrollbarEnabled:Z

    return v0
.end method

.method protected loadDirectoryPartition(ILcom/android/contacts/list/DirectoryPartition;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "directoryId"

    invoke-virtual {p2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method protected loadPreferences()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContactNameDisplayOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactNameDisplayOrder(I)V

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getSortOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSortOrder(I)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setContext(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setLoaderManager(Landroid/app/LoaderManager;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    return-void
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

    const-string v4, "ContactEntryListFragment"

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

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/contacts/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDirectoryLoader(Lcom/android/contacts/list/DirectoryListLoader;)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createCursorLoaderToSupportSimContacts()Landroid/content/CursorLoader;

    move-result-object v2

    :goto_1
    if-eqz p2, :cond_3

    const-string v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_2
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v2, v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ContactEntryListFragment"

    const-string v5, "onCreateLoader(), set fake mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

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
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createCursorLoader()Landroid/content/CursorLoader;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    instance-of v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSweepActionEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSweepActionEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->requestFocus()Z

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v1
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setEmptyView(Landroid/view/View;)V

    instance-of v1, v0, Lcom/android/contacts/ContactListEmptyView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/contacts/ContactListEmptyView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEmptyView:Lcom/android/contacts/ContactListEmptyView;

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setDividerHeight(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSaveEnabled(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v2, 0x7f0d00ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v2, 0x7f0d00ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalTwIndexScrollbar()V

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    return-void

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public onDetailsLoaded()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDetailsLoaded:Z

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startFullQuery()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    :cond_0
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method protected abstract onItemClick(IJ)V
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    if-ge p3, v2, :cond_1

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v0, p3, v2

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isGalSearchShowMore(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadDataDirectoryPartition(I)V

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p4, p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(IJ)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 8
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

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const-string v2, "ContactEntryListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadFinished(id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    if-ne v1, v5, :cond_2

    iput v7, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDeleteMode:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_3

    iput v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    if-ne v2, v6, :cond_5

    iput v7, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startFullQuery()V

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPartitionLoaded(ILandroid/database/Cursor;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_1

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->setProfileHeader()V

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->showCount(ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->completeRestoreInstanceState()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleTwIndexScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->addTwIndexScroll(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    sget-object v1, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "ContactEntryListFragment"

    const-string v1, "Observer TwCursorIndexer was not registered."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Picker result handler is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "sectionHeaderDisplayEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "photoLoaderEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "quickContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "includeProfile"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "visibleScrollbarEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "scrollbarPosition"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "visibleTwIndexScrollbarEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleTwIndexScrollbarEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "scrollbarPosition"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "directorySearchMode"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "selectionVisible"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "legacyCompatibility"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "queryString"

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "directoryResultLimit"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "request"

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "darkTheme"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "fakeQueryStatus"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->pause()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/list/ProviderStatusLoader;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ProviderStatusLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->loadPreferences()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected reloadData()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->onDataReload()V

    :cond_0
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "sectionHeaderDisplayEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    const-string v0, "photoLoaderEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    const-string v0, "quickContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    const-string v0, "includeProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    const-string v0, "searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    const-string v0, "visibleScrollbarEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    const-string v0, "scrollbarPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    const-string v0, "visibleTwIndexScrollbarEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleTwIndexScrollbarEnabled:Z

    const-string v0, "scrollbarPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    const-string v0, "directorySearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    const-string v0, "selectionVisible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    const-string v0, "legacyCompatibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    const-string v0, "queryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    const-string v0, "directoryResultLimit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactsRequest;

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const-string v0, "darkTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    const-string v0, "fakeQueryStatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    goto/16 :goto_0
.end method

.method protected setContactNameDisplayOrder(I)V
    .locals 1

    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    :cond_0
    return-void
.end method

.method public setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    goto :goto_0
.end method

.method public setFakeQueryModeEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    :cond_0
    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    :cond_0
    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    return-void
.end method

.method public setLoaderManager(Landroid/app/LoaderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-void
.end method

.method public setMultiSelectEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mMultiSelectEnabled:Z

    return-void
.end method

.method public setPhotoLoaderEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mUserProfileExists:Z

    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    :cond_0
    return-void
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    return-void
.end method

.method public setSearchMode(Z)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    if-eq v2, p1, :cond_4

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    if-nez p1, :cond_0

    iput v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    move v1, v0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v3, :cond_2

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->removePartition(I)V

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v4, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    :cond_3
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez p1, :cond_5

    :goto_2
    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    move v3, v4

    goto :goto_2
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalTwIndexScrollbar()V

    :cond_1
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    return-void
.end method

.method public setSortOrder(I)V
    .locals 1

    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    :cond_0
    return-void
.end method

.method protected final setSweepActionBarCallBack(Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    return-void
.end method

.method public setSweepActionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionEnabled:Z

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->updateSweepActionFeasibility()V

    return-void
.end method

.method protected final setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    :cond_0
    return-void
.end method

.method public setVerticalTwIndexScrollbarPosition(I)V
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalTwIndexScrollbar()V

    :cond_0
    return-void
.end method

.method public setVisibleScrollbarEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    :cond_0
    return-void
.end method

.method public setVisibleTwIndexScrollbarEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleTwIndexScrollbarEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleTwIndexScrollbarEnabled:Z

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalTwIndexScrollbar()V

    :cond_0
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public showTwIndexScrollbar()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    :cond_0
    return-void
.end method

.method protected startFullQuery()V
    .locals 8

    const/4 v2, 0x0

    const-string v0, "ContactEntryListFragment"

    const-string v1, "startFullQuery()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDetailsLoaded:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    const-string v0, "ContactEntryListFragment"

    const-string v3, "startFullQuery(), set full query"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v1

    const-string v3, " LIMIT "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/CursorLoader;->onContentChanged()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected startLoading()V
    .locals 6

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_4

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    instance-of v4, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_3

    move-object v0, v2

    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->getStatus()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->isPriorityDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    if-nez v4, :cond_2

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoadingDirectoryPartition(I)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    goto :goto_0
.end method
