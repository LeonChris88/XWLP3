.class public Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "GroupMemberSelectListAdapter.java"


# instance fields
.field protected mExceptedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field protected mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field protected mIsAutoAdd:Z

.field protected mMode:I

.field protected mModifiedMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mOriginalMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mModifiedMemberIds:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mOriginalMemberIds:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JI)V
    .locals 7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0xe

    if-ne p4, v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, " _id NOT IN (SELECT contacts._id FROM contacts "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "JOIN raw_contacts ON (contacts._id = raw_contacts.contact_id) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    if-eqz v2, :cond_0

    const-string v5, " OR "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v5, "(account_type = ? AND account_name = ?)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v5, v5, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v5, v5, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-eqz v5, :cond_5

    :goto_3
    return-void

    :cond_3
    const-string v5, "link_type1 != \'vnd.sec.contact.my_profile\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v5, 0xf

    if-ne p4, v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_3
.end method

.method private createFilterUriBuilder(I)Landroid/net/Uri$Builder;
    .locals 7

    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v1

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/groups/title/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/contacts_except_filter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/groups/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/contacts_except_filter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/groups/title/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/contacts_filter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/groups/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/contacts_filter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const-string v5, "content://com.android.contacts/contacts_list/filter"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const-string v5, "content://com.android.contacts/contacts/account_filter"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 8

    const/4 v7, 0x0

    move-object v1, p1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getUpperCaseQueryString()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    :cond_0
    invoke-virtual {p0, v1, p4, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/16 v6, 0x9

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;III)V

    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindPresenceAndStatusMessage(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindAccountIcons(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindSearchSnippet(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    :goto_2
    invoke-virtual {p0, p4}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isEnabled(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setEnabled(Z)V

    return-void

    :cond_1
    move-object v0, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v7}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    sget-object v4, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const-string v3, "sort_key"

    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    sget-object v4, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->createFilterUriBuilder(I)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->configureUri(Landroid/content/CursorLoader;JI)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->configureProjection(Landroid/content/CursorLoader;)V

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_0

    :cond_4
    const-string v3, "sort_key_alt"

    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    return-void
.end method

.method protected configureUri(Landroid/content/CursorLoader;JI)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v0

    :cond_0
    packed-switch p4, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/groups/title/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts_except"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_0
    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "directory"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    return-void

    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/groups/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts_except"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/groups/title/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/groups/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :pswitch_5
    const-string v4, "content://com.android.contacts/contacts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_6
    const-string v4, "content://com.android.contacts/contacts/account"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected getMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mMode:I

    return v0
.end method

.method public isEnabled(I)Z
    .locals 9

    const/16 v8, 0xd

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mIsAutoAdd:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mMode:I

    and-int/lit8 v4, v4, 0x8

    const/16 v7, 0x8

    if-ne v4, v7, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mOriginalMemberIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v4, v6

    :goto_0
    move v6, v4

    :cond_1
    :goto_1
    return v6

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mMode:I

    and-int/lit8 v4, v4, 0x4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v6, v5

    goto :goto_1
.end method

.method protected setAutoAdd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mIsAutoAdd:Z

    return-void
.end method

.method protected setExceptedAccounts(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    :cond_0
    return-void
.end method

.method protected setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-void
.end method

.method protected setMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mMode:I

    return-void
.end method

.method protected setModifiedMemeberIds(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mModifiedMemberIds:Ljava/util/List;

    :cond_0
    return-void
.end method

.method protected setOriginalMemeberIds(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mOriginalMemberIds:Ljava/util/List;

    :cond_0
    return-void
.end method
