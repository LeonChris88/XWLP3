.class public Lcom/android/contacts/editor/GroupMembershipView;
.super Landroid/widget/LinearLayout;
.source "GroupMembershipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;

.field private mDefaultGroupId:J

.field private mDefaultGroupVisibilityKnown:Z

.field private mDefaultGroupVisible:Z

.field private mFavoritesGroupId:J

.field private mGroupList:Landroid/widget/TextView;

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mKind:Lcom/android/contacts/model/DataKind;

.field private mNoGroupString:Ljava/lang/String;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPrimaryTextColor:I

.field private mSecondaryTextColor:I

.field private mSelectedGroupNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/contacts/model/EntityDelta;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getGroupId(Ljava/lang/String;)J
    .locals 14

    const-wide/16 v10, -0x1

    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.contacts/groups"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND account_type = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND account_name = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_0
    return-wide v10

    :cond_0
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "account_name"

    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "account_name"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "account_type"

    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "group_visible"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "title"

    invoke-virtual {v13, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    goto :goto_0
.end method

.method private hasMembership(J)Z
    .locals 7

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v5, p1, v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    const-string v6, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "data1"

    invoke-virtual {v3, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private hasMembership(JLjava/lang/String;)Z
    .locals 8

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v6, p1, v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "data1"

    invoke-virtual {v4, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "title"

    invoke-virtual {v4, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-eqz v6, :cond_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mSelectedGroupNames:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mSelectedGroupNames:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private updateView()V
    .locals 14

    const/4 v13, 0x4

    const/4 v10, 0x3

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    if-nez v6, :cond_2

    :cond_0
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-wide v11, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    iput-wide v11, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, -0x1

    invoke-interface {v6, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    const-string v6, "com.google"

    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_4

    iput-wide v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    :cond_4
    invoke-direct {p0, v1, v2, v3}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(JLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->covertToSystemTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    if-nez v6, :cond_8

    const v6, 0x7f0d01a5

    invoke-virtual {p0, v6}, Lcom/android/contacts/editor/GroupMembershipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    invoke-virtual {p0, p0}, Lcom/android/contacts/editor/GroupMembershipView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->isEnabled()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mNoGroupString:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    iget-boolean v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    if-nez v6, :cond_1

    iget-wide v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v6, v9, v11

    if-eqz v6, :cond_a

    iget-wide v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    invoke-direct {p0, v9, v10}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v6

    if-nez v6, :cond_a

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    iput-boolean v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    move v6, v8

    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct {p0, v5, v6, v4}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(JLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "android.intent.extra.RAWCONTACT_ID"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

    const-string v1, "com.google"

    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0, v4, v8}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPrimaryTextColor:I

    const v2, 0x7f070049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mSecondaryTextColor:I

    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0252

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mNoGroupString:Ljava/lang/String;

    const v2, 0x7f0d016c

    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/GroupMembershipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    return-void
.end method

.method public setKind(Lcom/android/contacts/model/DataKind;)V
    .locals 3

    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mKind:Lcom/android/contacts/model/DataKind;

    const v1, 0x7f0d016b

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/GroupMembershipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setState(Lcom/android/contacts/model/EntityDelta;)V
    .locals 2

    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    return-void
.end method

.method public updateSelectedGroup(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    const-string v8, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v7, v8}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mSelectedGroupNames:Ljava/util/List;

    if-nez v7, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mSelectedGroupNames:Ljava/util/List;

    :cond_2
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mSelectedGroupNames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {p0, v7, v8, v2}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(JLjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mKind:Lcom/android/contacts/model/DataKind;

    invoke-static {v7, v8}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/android/contacts/editor/GroupMembershipView;->getGroupId(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "data1"

    invoke-virtual {v1, v7, v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mSelectedGroupNames:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    return-void
.end method
