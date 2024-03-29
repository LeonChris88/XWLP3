.class public Lcom/android/contacts/group/GroupBrowseListFragment;
.super Landroid/app/Fragment;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;,
        Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;,
        Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;,
        Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;,
        Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;,
        Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;
    }
.end annotation


# static fields
.field static final GROUP_LIST_PROJECTION:[Ljava/lang/String;

.field static final GROUP_MEMBER_PROJECTION:[Ljava/lang/String;

.field private static mIsStoped:Z

.field private static mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

.field private mAddAccountsView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHugeFontSize:I

.field private mIsHugeFontMode:Z

.field private mJustCreated:Z

.field private mList:Landroid/widget/ExpandableListView;

.field private mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

.field private mRootView:Landroid/view/View;

.field private mSelectedGroupInfo:Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;

.field private mSelectedGroupUri:Landroid/net/Uri;

.field private mSelectionToScreenRequested:Z

.field private mSelectionVisible:Z

.field private mSyncStatusObserver:Landroid/database/ContentObserver;

.field private mVerticalScrollbarPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "groups_count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "system_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "auto_add"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_MEMBER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mVerticalScrollbarPosition:I

    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$1;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/group/GroupBrowseListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsHugeFontMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/group/GroupBrowseListFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mHugeFontSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    return-object v0
.end method

.method private configureCustomActionBarAtBottom()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0d00ff

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0d00fd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0d00fe

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/group/GroupBrowseListFragment$3;

    invoke-direct {v4, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$3;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0d00e9

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/android/contacts/group/GroupBrowseListFragment$4;

    invoke-direct {v4, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$4;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0d0198

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/android/contacts/group/GroupBrowseListFragment$5;

    invoke-direct {v4, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$5;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private configureVerticalScrollbar()V
    .locals 5

    const v4, 0x7f080022

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    iget v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setVerticalScrollbarPosition(I)V

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    const/high16 v3, 0x200

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setScrollBarStyle(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mVerticalScrollbarPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v4}, Landroid/widget/ExpandableListView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/widget/ExpandableListView;->setPadding(IIII)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 3

    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/high16 v2, 0x7f10

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    new-instance v2, Lcom/android/contacts/group/GroupBrowseListFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$2;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/widget/PopupMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->setupMenuItems(Landroid/view/Menu;)V

    return-object v1
.end method

.method private dismissProgress()V
    .locals 3

    sget-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const-string v1, "GroupBrowseListFragment"

    const-string v2, "progress null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "GroupBrowseListFragment"

    const-string v2, "progress.get null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GroupBrowseListFragment"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getSelectedGroupInfo()Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;

    return-object v0
.end method

.method private isEditableGroup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v1, "vnd.sec.contact.agg.account_type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "com.google"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerSyncStatusObserver()V
    .locals 4

    const-string v1, "content://com.android.contacts/check_photo_updates"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setSelectedGroup(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method private setSelectedGroupInfo(Landroid/database/Cursor;)V
    .locals 7

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;

    :cond_0
    return-void
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f0d0230

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0d0231

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0d0232

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0d0234

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0d0235

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0d0236

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0d0237

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0d0238

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0d0239

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0d023a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0d023b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private unregisterSyncStatusObserver()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private viewGroup(Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectedGroup(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;->onViewGroupAction(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6

    if-nez p2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v2, "title"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "system_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0a007e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const v2, 0x7f0a0117

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v5, -0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v5, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "result"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "smsto"

    const-string v6, ""

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v5, "sendto"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    if-ne p2, v5, :cond_0

    const-string v5, "result"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    const-string v5, ""

    aput-object v5, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "mailto:"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v5, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_2
    if-ne p2, v5, :cond_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$100(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->registerSyncStatusObserver()V

    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 11

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, p3, p4}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v7}, Lcom/android/contacts/group/GroupBrowseListFragment;->isEditableGroup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    const/4 v7, 0x7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v7, v0

    :goto_0
    new-instance v9, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v10, Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-direct {v9, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "GroupInfo"

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "isEditable"

    invoke-virtual {v9, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "AutoAdd"

    invoke-virtual {v9, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v9}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12

    const v11, 0x7f0a02c0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroupInfo()Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->getId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;)I

    move-result v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    return v9

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "GroupInfo"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "actionCode"

    const/16 v3, 0x96

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "SelectMode"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "GroupInfo"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "actionCode"

    const/16 v3, 0xa0

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "SelectMode"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "GroupInfo"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EditMode"

    const/16 v1, 0xf

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    const/4 v0, 0x7

    invoke-virtual {p0, v2, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const-string v0, "EditMode"

    const/16 v1, 0xe

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :pswitch_3
    const-string v0, "vnd.sec.contact.agg.account_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroupInfo()Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "deleteCompleted"

    invoke-static {v1, v0, v2, v3, v10}, Lcom/android/contacts/ContactSaveService;->createGroupMultipleDeleteIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    :goto_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v8, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v8, v7, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_1
    const-string v0, "com.google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "deleteCompleted"

    invoke-static {v0, v1, v2, v3, v10}, Lcom/android/contacts/ContactSaveService;->createGroupSingleDeleteIntent(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_2

    :pswitch_4
    const-string v0, "vnd.sec.contact.agg.account_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroupInfo()Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "deleteCompleted"

    invoke-static {v1, v0, v2, v3, v9}, Lcom/android/contacts/ContactSaveService;->createGroupMultipleDeleteIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    :goto_3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v8, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v8, v7, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_2
    const-string v0, "com.google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "deleteCompleted"

    invoke-static {v0, v1, v2, v3, v9}, Lcom/android/contacts/ContactSaveService;->createGroupSingleDeleteIntent(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v7

    goto :goto_3

    :cond_4
    move-object v0, v7

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0264
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "GroupBrowseListFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 13

    invoke-super/range {p0 .. p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    const v9, 0x7f10000a

    invoke-virtual {v6, v9, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v3, 0x0

    iget-wide v9, v7, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :goto_0
    if-eqz v3, :cond_0

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v4

    goto :goto_1

    :pswitch_0
    iget-wide v9, v7, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v5

    iget-wide v9, v7, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    iget-object v9, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v9, v5, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    iget-wide v9, v7, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v5

    iget-object v9, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v9, v5}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectedGroupInfo(Landroid/database/Cursor;)V

    const/4 v9, 0x6

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    const/4 v9, 0x6

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x6

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    const/4 v9, 0x2

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    const v9, 0x7f0d0266

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v9, 0x7f0d0267

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const/4 v9, 0x6

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "xxx"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const v9, 0x7f0d0268

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    iget-object v9, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    const/4 v10, 0x4

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    iget-object v9, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/4 v9, 0x2

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    const v9, 0x7f0d0267

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_4
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const v9, 0x7f0d0263

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v9, 0x2

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_5

    const v9, 0x7f0d0266

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v9, 0x7f0d0267

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    const v9, 0x7f0d0268

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const-string v0, "groups.groupUri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z

    :cond_0
    const v0, 0x7f04007f

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->configureCustomActionBarAtBottom()V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->registerForContextMenu(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mJustCreated:Z

    sput-boolean v2, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsStoped:Z

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->areGroupWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    return-object v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onDeleteCompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->dismissProgress()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$1100(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$1200(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->unregisterSyncStatusObserver()V

    iput-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 11

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v3, "xxx"

    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getChildrenCount(I)I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.google"

    if-eq v3, v1, :cond_1

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v7}, Lcom/android/contacts/group/GroupBrowseListFragment;->isEditableGroup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    const/4 v7, 0x7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v7, v0

    :goto_1
    new-instance v9, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v10, Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-direct {v9, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "GroupInfo"

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "isEditable"

    invoke-virtual {v9, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "AutoAdd"

    invoke-virtual {v9, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v9}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v7, v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "GroupBrowseListFragment"

    const-string v5, "onResume"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "huge_font"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsHugeFontMode:Z

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mHugeFontSize:I

    return-void

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public setAddAccountsVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAddAccountsView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAddAccountsView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    return-void
.end method

.method public setSelectedUri(Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Landroid/net/Uri;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z

    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionVisible:Z

    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1

    iget v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mVerticalScrollbarPosition:I

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->configureVerticalScrollbar()V

    :cond_0
    return-void
.end method
