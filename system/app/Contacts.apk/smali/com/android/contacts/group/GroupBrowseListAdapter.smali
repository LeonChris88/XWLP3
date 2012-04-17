.class public Lcom/android/contacts/group/GroupBrowseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupBrowseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;
    }
.end annotation


# instance fields
.field private final mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSelectedGroupUri:Landroid/net/Uri;

.field private mSelectionVisible:Z


# direct methods
.method private bindHeaderView(Lcom/android/contacts/group/GroupListItem;Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;)V
    .locals 4

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupListItem;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupListItem;->getDataSet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    iget-object v1, p2, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static getGroupUriFromId(J)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private isSelectedGroup(Landroid/net/Uri;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/contacts/group/GroupListItem;
    .locals 14

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x4

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x5

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v12, p1, -0x1

    const/4 v7, 0x1

    if-ltz v12, :cond_2

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3, v11}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    :cond_2
    new-instance v0, Lcom/android/contacts/group/GroupListItem;

    invoke-direct/range {v0 .. v8}, Lcom/android/contacts/group/GroupListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZI)V

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getItem(I)Lcom/android/contacts/group/GroupListItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getItem(I)Lcom/android/contacts/group/GroupListItem;

    move-result-object v0

    if-eqz p2, :cond_1

    move-object v3, p2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;

    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/group/GroupListItem;->isFirstGroupInAccount()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v0, v4}, Lcom/android/contacts/group/GroupBrowseListAdapter;->bindHeaderView(Lcom/android/contacts/group/GroupListItem;Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;)V

    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeader:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->divider:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/android/contacts/group/GroupListItem;->getGroupId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getGroupUriFromId(J)Landroid/net/Uri;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupListItem;->getMemberCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1}, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->setUri(Landroid/net/Uri;)V

    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->groupTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupListItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->groupMemberCount:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectionVisible:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, v1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->isSelectedGroup(Landroid/net/Uri;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setActivated(Z)V

    :cond_0
    return-object v3

    :cond_1
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040072

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;

    invoke-direct {v4, v3}, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeader:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->divider:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
