.class public Lcom/android/contacts/list/PhoneNumberListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "PhoneNumberListAdapter.java"


# static fields
.field protected static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlternativeDisplayNameColumnIndex:I

.field private mDisplayNameColumnIndex:I

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/PhoneNumberListAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-void
.end method

.method protected static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "address_book_index_extras"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 5

    if-eqz p4, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v2, Lcom/android/contacts/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported filter type came (type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showing all contacts."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :pswitch_1
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

    :pswitch_2
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "account_type=? AND account_name=?"

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

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6

    iget v2, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mDisplayNameColumnIndex:I

    iget v3, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mAlternativeDisplayNameColumnIndex:I

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;IIZI)V

    const/16 v0, 0x9

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showPhoneticName(Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    const/4 v3, 0x3

    invoke-virtual {p1, p2, v3}, Lcom/android/contacts/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 8

    const/16 v1, 0x8

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_0
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZJ)V

    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v3, :cond_0

    iget-object v1, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->lastInSection:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 17

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/contacts/list/ContactListItemView;

    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v11, 0x1

    const/16 v16, 0x1

    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    cmp-long v2, v9, v14

    if-nez v2, :cond_0

    const/4 v11, 0x0

    :cond_0
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v2, v9, v12

    if-nez v2, :cond_1

    const/16 v16, 0x0

    :cond_1
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isQuickContactEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v6, 0x8

    const/4 v7, 0x6

    const/4 v8, 0x7

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;III)V

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/PhoneNumberListAdapter;->unbindName(Lcom/android/contacts/list/ContactListItemView;)V

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView(ZZ)V

    goto :goto_0
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 8

    const-wide/16 v6, 0x0

    cmp-long v3, p2, v6

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/contacts/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoneNumberListAdapter is not ready for non-default directory ID (directoryId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_0
    const-string v3, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/list/PhoneNumberListAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getSortOrder()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const-string v3, "sort_key"

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "directory"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/android/contacts/list/PhoneNumberListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    :cond_3
    sget-object v3, Lcom/android/contacts/list/PhoneNumberListAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/contacts/list/PhoneNumberListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_1

    :cond_4
    const-string v3, "sort_key_alt"

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget v1, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mDisplayNameColumnIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    sget-object v3, Lcom/android/contacts/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Cursor was null in getDataUri() call. Returning null instead."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/android/contacts/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    return-object v0
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x4

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mDisplayNameColumnIndex:I

    iput v3, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mAlternativeDisplayNameColumnIndex:I

    :goto_0
    return-void

    :cond_0
    iput v3, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mDisplayNameColumnIndex:I

    iput v2, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mAlternativeDisplayNameColumnIndex:I

    goto :goto_0
.end method

.method protected unbindName(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->hideDisplayName()V

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->hidePhoneticName()V

    return-void
.end method
