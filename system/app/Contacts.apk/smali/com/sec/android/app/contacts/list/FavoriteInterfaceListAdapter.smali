.class public Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "FavoriteInterfaceListAdapter.java"


# instance fields
.field private final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field private final DIVIDER:I

.field private final FREQUENT:I

.field private final STARRED:I

.field private mActionCode:I

.field private mContactCursor:Landroid/database/Cursor;

.field private mDividerPosition:I

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

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContactCursor:Landroid/database/Cursor;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->STARRED:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->DIVIDER:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->FREQUENT:I

    return-void
.end method

.method private getDivider()Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f040096

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0d0114

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a009e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getDividerPosition(Landroid/database/Cursor;)I
    .locals 4

    const/4 v0, 0x0

    const-string v3, "starred"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    :goto_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected bindCheckbox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;ZI)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mSelectedInfoHashSet:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getUpperCaseQueryString()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v8

    iget v0, v8, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/16 v2, -0xe

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mDividerPosition:I

    if-ne p4, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0a009e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getDisplayPhotos()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x7

    const/16 v6, 0x9

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;III)V

    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p3, v0, p4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindCheckbox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;ZI)V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    invoke-virtual {v1, v9}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    return-void

    :cond_4
    move-object v0, v9

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/database/StaleDataException;->printStackTrace()V

    goto :goto_2
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6

    const-string v4, "FavoriteInterfaceListAdapter"

    const-string v5, " === configureLoader === "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getSortOrder()I

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

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    sget-object v4, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    :cond_4
    const-string v3, "sort_key_alt"

    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    return-void
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

    sparse-switch v2, :sswitch_data_0

    :goto_1
    :sswitch_0
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

    :sswitch_1
    const-string v2, "starred=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v2, "starred=0 AND has_phone_number = 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0xf -> :sswitch_2
        -0xd -> :sswitch_1
        -0x6 -> :sswitch_0
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 2

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget v1, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    return-void

    :pswitch_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_0
    .end packed-switch
.end method

.method protected getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getDivider()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mDividerPosition:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mDividerPosition:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getItemViewType(I)I

    move-result v6

    if-eqz p4, :cond_0

    move-object v7, p4

    :goto_0
    invoke-virtual {p0, v7, p1, p2, p3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    return-object v7

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    goto :goto_0
.end method

.method public setActionCode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mActionCode:I

    return-void
.end method

.method public setContactCursor(Landroid/database/Cursor;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getDividerPosition(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mDividerPosition:I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->notifyDataSetChanged()V

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

    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mSelectedInfoHashSet:Ljava/util/HashSet;

    return-void
.end method
