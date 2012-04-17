.class public Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;
.super Landroid/app/ListFragment;
.source "GroupSelectionFragment.java"


# static fields
.field private static mSystemTitleMap:Ljava/util/HashMap;
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


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

.field mCheckedGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedGroupTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactId:J

.field private mContext:Landroid/content/Context;

.field private mCreateFieldButton:Landroid/widget/Button;

.field private final mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderCheckBox:Landroid/widget/CheckBox;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderView:Landroid/view/View;

.field private mIsContainGoogle:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    new-instance v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;-><init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method private UpdateItems(Landroid/database/Cursor;)V
    .locals 13

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x2

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "_id"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string v12, "auto_add"

    aput-object v12, v2, v11

    const-string v3, "auto_add = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->covertToSystemTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    :goto_3
    iget-object v11, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->UpdateItems(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->considerBindData()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateHeaderUnCheckState()V

    return-void
.end method

.method private considerBindData()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f040085

    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->forceLayout()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method

.method public static covertToSystemTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "Friends"

    const v2, 0x7f0a0249

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "Family"

    const v2, 0x7f0a024a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "Coworkers"

    const v2, 0x7f0a024b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "My Contacts"

    const v2, 0x7f0a024c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method private getGoogleAccounts()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManager;->getGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private getGroupValues(Ljava/lang/String;JJ)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "account_type"

    const-string v2, "vnd.sec.contact.agg.account_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "account_name"

    const-string v2, "vnd.sec.contact.agg.account_name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data1"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contact_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method private resetGroups()V
    .locals 4

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContactId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND  mimetype=?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateAggregatedGroup()V
    .locals 15

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "contact_id"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " = ? AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "mimetype"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " = ? AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " = ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContactId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v0

    const/4 v0, 0x1

    const-string v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v12, v0

    const/4 v9, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getCount()I

    move-result v0

    if-ge v9, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "group_membership"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v7

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContactId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getGroupValues(Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateAllUnCheckState()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method private updateHeaderUnCheckState()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->onUpdateSaveMenuItem(Z)V

    :goto_1
    return-void

    :cond_2
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->onUpdateSaveMenuItem(Z)V

    goto :goto_1
.end method


# virtual methods
.method public getSelecedGroupId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedGroupTitle()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public loadData(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "android.intent.extra.CONTACT_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContactId:J

    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    const-string v0, "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->onUpdateSaveMenuItem(Z)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "SelectGroupFragment"

    const-string v1, "========== onCreate(Bundle savedInstanceState) =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SelectGroupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "SelectGroupFragment"

    const-string v1, "========== onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedState) =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SelectGroupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflater = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SelectGroupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SelectGroupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savedState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f040084

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    const v0, 0x7f040085

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0d019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0a021e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0d00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0d019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCreateFieldButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCreateFieldButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;-><init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez p3, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->onUpdateSaveMenuItem(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateAllUnCheckState()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->onUpdateSaveMenuItem(Z)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v5, p3, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v3, p3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2, v4}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v4, p3, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v4, p3, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateHeaderUnCheckState()V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v4, p3, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2, v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v4, p3, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v4, p3, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public onStart()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public updateGroup()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    if-nez v0, :cond_1

    const-string v0, "SelectGroupFragment"

    const-string v1, "updateAggregatedGroup, mAdapter is null so do not reset action."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->resetGroups()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateAggregatedGroup()V

    goto :goto_0
.end method
