.class public Lcom/android/contacts/list/EmailAddressListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "EmailAddressListAdapter.java"


# static fields
.field static final EMAILS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAlternativeDisplayNameColumnIndex:I

.field private mDisplayNameColumnIndex:I

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

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

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/EmailAddressListAdapter;->EMAILS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected bindEmailAddress(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
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

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    const/4 v3, 0x3

    invoke-virtual {p1, p2, v3}, Lcom/android/contacts/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6

    iget v2, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mDisplayNameColumnIndex:I

    iget v3, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mAlternativeDisplayNameColumnIndex:I

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getContactNameDisplayOrder()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;IIZI)V

    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 8

    const/4 v1, 0x6

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

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZJ)V

    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/EmailAddressListAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getPositionForSection(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/EmailAddressListAdapter;->getPositionForSection(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v2, p2, :cond_1

    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    invoke-virtual {p0, v0, p4}, Lcom/android/contacts/list/EmailAddressListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/EmailAddressListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/EmailAddressListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/EmailAddressListAdapter;->bindEmailAddress(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_0
    const-string v2, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    sget-object v2, Lcom/android/contacts/list/EmailAddressListAdapter;->EMAILS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getSortOrder()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "sort_key"

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "sort_key_alt"

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/EmailAddressListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget v1, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mDisplayNameColumnIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/EmailAddressListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/android/contacts/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v1, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    return-object v0
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x4

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mDisplayNameColumnIndex:I

    iput v3, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mAlternativeDisplayNameColumnIndex:I

    :goto_0
    return-void

    :cond_0
    iput v3, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mDisplayNameColumnIndex:I

    iput v2, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mAlternativeDisplayNameColumnIndex:I

    goto :goto_0
.end method
