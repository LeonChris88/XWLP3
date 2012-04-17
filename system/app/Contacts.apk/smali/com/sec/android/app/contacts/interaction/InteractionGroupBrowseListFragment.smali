.class public Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;
.super Landroid/app/Fragment;
.source "InteractionGroupBrowseListFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$InternalGroupInfo;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$OnInteractionGroupBrowserActionListener;
    }
.end annotation


# static fields
.field static final GROUP_LIST_PROJECTION:[Ljava/lang/String;

.field static final GROUP_MEMBER_PROJECTION:[Ljava/lang/String;

.field private static mIsStoped:Z


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mActionCode:I

.field private mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

.field private mAddAccountsView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentCount:I

.field private mJustCreated:Z

.field private mLimitedCount:I

.field private mList:Landroid/widget/ExpandableListView;

.field private mRootView:Landroid/view/View;

.field private mSelectedGroupUri:Landroid/net/Uri;

.field private mSyncStatusObserver:Landroid/database/ContentObserver;

.field private mVerticalScrollbarPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "system_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_MEMBER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mVerticalScrollbarPosition:I

    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsStoped:Z

    return v0
.end method

.method private registerSyncStatusObserver()V
    .locals 4

    const-string v1, "content://com.android.contacts/check_photo_updates"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterSyncStatusObserver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

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
    .locals 6

    const/4 v5, -0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v5, :cond_0

    const-string v2, "InteractionGroupBrowseListFragment"

    const-string v3, "[Interaction]onActivityResult REQUEST_GROUP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-nez v0, :cond_1

    const-string v2, "InteractionGroupBrowseListFragment"

    const-string v3, "[Interaction]rtnData null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "InteractionGroupBrowseListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Interaction]sendNum subTab"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    const-string v2, "InteractionGroupBrowseListFragment"

    const-string v3, "[Interaction]sendNum subTab != null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
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

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectedGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    :cond_0
    const v0, 0x7f04007f

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->registerForContextMenu(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mJustCreated:Z

    sput-boolean v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsStoped:Z

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->areGroupWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRootView:Landroid/view/View;

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 12

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v10

    invoke-interface {v10, p3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/Cursor;

    const/4 v10, 0x3

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x2

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v10, "xxx"

    const/4 v11, 0x5

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v10, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getChildrenCount(I)I

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "com.google"

    if-eq v10, v1, :cond_1

    const/4 v10, 0x0

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v10, 0x1

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x5

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Landroid/content/Intent;

    const-string v10, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;)I

    move-result v8

    const-string v10, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "GroupInfo"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v10, "actionCode"

    iget v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mActionCode:I

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "maxRecipientCount"

    iget v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mLimitedCount:I

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "existingRecipientCount"

    iget v11, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mCurrentCount:I

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "SelectMode"

    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->unregisterSyncStatusObserver()V

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "InteractionGroupBrowseListFragment"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->registerSyncStatusObserver()V

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "do_import_action"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mJustCreated:Z

    if-nez v3, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "do_import_action"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mJustCreated:Z

    return-void
.end method

.method public onStart()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->registerSyncStatusObserver()V

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "do_import_action"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mJustCreated:Z

    if-nez v3, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "do_import_action"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mJustCreated:Z

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method

.method public setAddAccountsVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAddAccountsView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAddAccountsView:Landroid/view/View;

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

.method public setMMSinformation(III)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mActionCode:I

    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mLimitedCount:I

    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mCurrentCount:I

    return-void
.end method
