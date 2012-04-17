.class public Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "InteractionGroupMemberSelectListAdapter.java"


# instance fields
.field private mActionCode:I

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

.field private mSelectedContactHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mModifiedMemberIds:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JI)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v3, 0xa0

    if-ne v2, v3, :cond_2

    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const/4 v2, 0x4

    if-ne p4, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_4

    :goto_1
    return-void

    :cond_2
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v3, 0xaa

    if-ne v2, v3, :cond_3

    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v3, 0x96

    if-ne v2, v3, :cond_0

    const-string v2, "(has_email>0 OR has_phone_number>0)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setSimFeatureSelection(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createFilterUriBuilder(I)Landroid/net/Uri$Builder;
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t generate URI: GroupInfo is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

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

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSimFeatureSelection(Ljava/lang/StringBuilder;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "(link_type1 != \'vnd.sec.contact.sim\')"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method


# virtual methods
.method protected bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;ZI)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    goto :goto_0
.end method

.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mDisplayNameColumnIndex:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mAlternativeDisplayNameColumnIndex:I

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContactNameDisplayOrder()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;IIZI)V

    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 3

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getUpperCaseQueryString()[C

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isSelectionVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    :cond_0
    invoke-virtual {p0, v0, p4, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;ZI)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getQueryString()Ljava/lang/String;

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

    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getSortOrder()I

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

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->createFilterUriBuilder(I)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->configureUri(Landroid/content/CursorLoader;JI)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->configureProjection(Landroid/content/CursorLoader;)V

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_0

    :cond_4
    const-string v3, "sort_key_alt"

    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    return-void
.end method

.method protected configureUri(Landroid/content/CursorLoader;JI)V
    .locals 7

    const-wide/16 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

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

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

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

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

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

    nop

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

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mMode:I

    return v0
.end method

.method public setActionCode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

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

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    :cond_0
    return-void
.end method

.method protected setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-void
.end method

.method protected setMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mMode:I

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

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mModifiedMemberIds:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setSelctedContactHashMap(Ljava/util/HashMap;)V
    .locals 0
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

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    return-void
.end method
