.class public Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "GroupMemberPickerFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/list/OnActionBarClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;,
        Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/sec/android/app/contacts/list/OnActionBarClickListener;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mEmptyView:Landroid/view/View;

.field private mExceptedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mHeaderView:Landroid/view/View;

.field private mIsAutoAdd:Z

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

.field private mMode:I

.field private mModifiedMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectAllEnabled:Z

.field private mSelectAllVisible:Z

.field private mStatus:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->NOTLOADED:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setQuickContactEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSelectAllVisible(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setDirectorySearchMode(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;I)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;)Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private addAllMember()V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private configureEmptyView(Z)V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

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

.method private configureSelectAll()V
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0d008e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mIsAutoAdd:Z

    if-nez v2, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllEnabled:Z

    :goto_1
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllEnabled:Z

    goto :goto_1
.end method

.method private configureUri(I)Landroid/net/Uri;
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private removeAllMember()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private updateHeaderViewAndDoneButton()V
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    const v9, 0x7f0d0090

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->isSearchMode()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v6, v4}, Lcom/android/contacts/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v1

    const-wide/16 v9, 0x0

    cmp-long v6, v1, v9

    if-nez v6, :cond_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    invoke-interface {v6, v8}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onDoneButtonStateUpdated(Z)V

    :goto_2
    return-void

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    invoke-interface {v6, v7}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    return-void
.end method

.method protected configureSearchbar()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0a01ac

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setDisplayPhotos(Z)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setQuickContactEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setModifiedMemeberIds(Ljava/util/List;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setExceptedAccounts(Ljava/util/List;)V

    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setMode(I)V

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mIsAutoAdd:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setAutoAdd(Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f04003c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mIsAutoAdd:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;->runQuery()V

    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0400b1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureSelectAll()V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllEnabled:Z

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureSearchbar()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDetach()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;->cancelOperation(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    :cond_1
    return-void
.end method

.method public onDoneClicked()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onSelectedAction(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->notifyDataSetChanged()V

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateHeaderViewAndDoneButton()V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
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

    if-nez p3, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    const v2, 0x7f0d0090

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->removeAllMember()V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateHeaderViewAndDoneButton()V

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->addAllMember()V

    goto :goto_0

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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

    const-string v0, "GroupMemberPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFinished : QueryStatus is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureEmptyView(Z)V

    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateHeaderViewAndDoneButton()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onRevertAction()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onRevertAction()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public setAutoAdd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mIsAutoAdd:Z

    return-void
.end method

.method public setExceptedAccounts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-void
.end method

.method public setGroupMemberPickerActionListener(Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    return-void
.end method

.method public setModifiedMemberIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setSelectAllVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    return-void
.end method
