.class public Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "FavoriteInterfaceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteFavoriteList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionCode:I

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

.field private mNoMatchView:Landroid/view/View;

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

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSectionHeaderDisplayEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setQuickContactEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDirectorySearchMode(I)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    return-void
.end method

.method private addSelectedContact(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method private getFrequentDeleteUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "usagefeedback_delete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private isSelectedContact(J)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private removeContact(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method private setDoneButton(I)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;->onDoneButtonStateUpdated(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_0
.end method


# virtual methods
.method public actionDeleteFavoriteList()V
    .locals 14

    new-instance v12, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v12, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "starred"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v3, "contact_id = ? AND mimetype_id in (Select _id from mimetypes where mimetype = \'vnd.android.cursor.item/phone_v2\')"

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v8, v12, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getFrequentDeleteUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v6, v12, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public addFavoriteContactList()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "starred"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v4, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setDisplayPhotos(Z)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setQuickContactEnabled(Z)V

    iget v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setActionCode(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0400af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getActionCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mNoMatchView:Landroid/view/View;

    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->isSelectedContact(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->removeContact(IJ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->addSelectedContact(IJ)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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

    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    const/16 v1, 0x15f

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setContactCursor(Landroid/database/Cursor;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setSelectedInfoHashSet(Ljava/util/HashSet;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDoneButton(I)V

    return-void
.end method

.method public runDeleteFavoriteListThread()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteFavoriteList;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteFavoriteList;-><init>(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-void
.end method

.method public setOnActionBarButtonUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    return-void
.end method
