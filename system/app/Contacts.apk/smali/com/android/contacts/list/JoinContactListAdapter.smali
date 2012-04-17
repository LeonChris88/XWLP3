.class public Lcom/android/contacts/list/JoinContactListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "JoinContactListAdapter.java"


# instance fields
.field private mAllContactsListShown:Z

.field private mShowAllContactsViewType:I

.field private mTargetContactId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->setIndexedPartition(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->setDirectorySearchMode(I)V

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mShowAllContactsViewType:I

    return-void
.end method

.method private inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addPartitions()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->addPartition(ZZ)V

    invoke-virtual {p0, v1, v1}, Lcom/android/contacts/list/JoinContactListAdapter;->addPartition(ZZ)V

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    return-void
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindAccountIcons(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_2
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    invoke-virtual {p0, v0, p4, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindAccountIcons(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->configureDefaultPartition(ZZ)V

    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 9

    const/4 v8, 0x1

    move-object v3, p1

    check-cast v3, Lcom/android/contacts/list/JoinContactLoader;

    iget-boolean v4, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mAllContactsListShown:Z

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setLoadSuggestionsAndAllContacts(Z)V

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "suggestions"

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    const-string v4, "limit"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setSuggestionUri(Landroid/net/Uri;)V

    sget-object v4, Lcom/android/contacts/list/JoinContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setProjection([Ljava/lang/String;)V

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/list/JoinContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "directory"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/contacts/list/JoinContactLoader;->setUri(Landroid/net/Uri;)V

    const-string v4, "_id!=? AND link_type1!=?"

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setSelection(Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "vnd.sec.contact.sim"

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setSelectionArgs([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->getSortOrder()I

    move-result v4

    if-ne v4, v8, :cond_1

    const-string v4, "sort_key"

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setSortOrder(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v4, "sort_key_alt"

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public getItemViewType(II)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mShowAllContactsViewType:I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactListAdapter;->getItemViewType(II)I

    move-result v0

    goto :goto_0
.end method

.method public getShowAllContactsLabelCursor()Landroid/database/Cursor;
    .locals 3

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/contacts/list/JoinContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v2, Lcom/android/contacts/list/JoinContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-super {p0}, Lcom/android/contacts/list/ContactListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v2, 0x7f0d008f

    const v1, 0x7f040090

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, v1, p4}, Lcom/android/contacts/list/JoinContactListAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0035

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1, p4}, Lcom/android/contacts/list/JoinContactListAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0036

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f040091

    invoke-direct {p0, v0, p5}, Lcom/android/contacts/list/JoinContactListAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAllContactsListShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mAllContactsListShown:Z

    return-void
.end method

.method public setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/list/JoinContactListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mAllContactsListShown:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->getShowAllContactsLabelCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    goto :goto_0
.end method

.method public setTargetContactId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    return-void
.end method
