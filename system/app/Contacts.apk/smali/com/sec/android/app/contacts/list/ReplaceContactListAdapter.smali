.class public Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "ReplaceContactListAdapter.java"


# instance fields
.field private final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field private mActionCode:I

.field private mSelectedInfoHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
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

    const-string v0, "content://com.android.contacts/contacts_list/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected bindCheckbox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;ZI)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->mSelectedInfoHashSet:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getUpperCaseQueryString()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    :cond_0
    invoke-virtual {p0, v1, p4, p3}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getDisplayPhotos()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v4, 0x7

    const/16 v6, 0x9

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;III)V

    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p3, v0, p4}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->bindCheckbox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;ZI)V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    invoke-virtual {v1, v8}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    return-void

    :cond_3
    move-object v0, v8

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/database/StaleDataException;->printStackTrace()V

    goto :goto_2
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6

    const-string v4, "ReplaceContactListAdapter"

    const-string v5, " === configureLoader === "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getQueryString()Ljava/lang/String;

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

    sget-object v4, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getSortOrder()I

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

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    sget-object v4, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    :cond_4
    const-string v3, "sort_key_alt"

    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 2

    if-eqz p4, :cond_0

    iget v0, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->PROJECTION_DATA:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 4

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v2, "starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v2, "_id IN (SELECT DISTINCT contact_id FROM raw_contacts WHERE account_type=? AND account_name=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p4, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p4, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p4, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, " AND data_set=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p4, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, " AND data_set IS NULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_4
    const-string v2, "mimetype=? AND data1=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p4, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, -0x6

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    if-eqz p4, :cond_0

    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    :cond_0
    :goto_0
    cmp-long v2, p2, v6

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    :cond_1
    if-eqz p4, :cond_2

    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, -0x3

    if-eq v2, v3, :cond_2

    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eq v2, v5, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "directory"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    return-void

    :cond_3
    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v2, v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_4
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->getSelectedContactId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public setActionCode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->mActionCode:I

    return-void
.end method

.method public setSelectedInfoHashSet(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactListAdapter;->mSelectedInfoHashSet:Ljava/util/HashSet;

    return-void
.end method
