.class public Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
.super Lcom/android/contacts/list/DefaultContactListAdapter;
.source "GroupMemberBrowseListAdapter.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field protected mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    const-string v0, "GroupMemberBrowseListAdapter"

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JI)V
    .locals 3

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    if-ne p4, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createFilterUriBuilder(I)Landroid/net/Uri$Builder;
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    const-string v4, "configureUri : groupInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t generate URI: GroupInfo is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    const-string v3, "content://com.android.contacts/groups/not_assigned/contacts_filter"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/groups/title/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/contacts_filter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/groups/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/contacts_filter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v3, "content://com.android.contacts/contacts/account_filter"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_0

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
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 7

    instance-of v5, p1, Lcom/android/contacts/list/ProfileAndContactsLoader;

    if-eqz v5, :cond_0

    move-object v5, p1

    check-cast v5, Lcom/android/contacts/list/ProfileAndContactsLoader;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->isSearchMode()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    sget-object v5, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string v5, "0"

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getSortOrder()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    const-string v4, "sort_key"

    :goto_1
    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-eqz v5, :cond_3

    const-wide/16 v5, 0x1

    cmp-long v5, p2, v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v5, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v5, "limit"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getDirectoryResultLimit()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    sget-object v5, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->createFilterUriBuilder(I)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->configureUri(Landroid/content/CursorLoader;JI)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_0

    :cond_5
    const-string v4, "sort_key_alt"

    goto :goto_1
.end method

.method protected configureUri(Landroid/content/CursorLoader;JI)V
    .locals 7

    const-wide/16 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "configureUri : groupInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    packed-switch p4, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    const-string v2, "content://com.android.contacts/groups/not_assigned/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_1
    cmp-long v2, p2, v5

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "directory"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_1
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

    goto :goto_1

    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

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

    goto :goto_1

    :pswitch_3
    const-string v2, "content://com.android.contacts/contacts/account"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    return v0
.end method

.method protected setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-void
.end method

.method protected setMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    return-void
.end method
