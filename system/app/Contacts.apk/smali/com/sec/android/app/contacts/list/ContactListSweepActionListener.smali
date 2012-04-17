.class public Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;
.super Ljava/lang/Object;
.source "ContactListSweepActionListener.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/list/DefaultContactListAdapter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;Lcom/android/contacts/list/DefaultContactListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/touchwiz/widget/TwSweepActionListView;",
            "Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object p3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    iput-object p4, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;

    return-void
.end method


# virtual methods
.method public onSweepActionCanceled(I)V
    .locals 3

    const-string v0, "ContactListSweepActionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled() / itemIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "ContactListSweepActionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionFired() / itemIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flickDirection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->getHasPhoneNumber()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    iget-object v4, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    const-string v0, "ContactListSweepActionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionStarted() / itemIndex = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v6

    const-string v0, "entities"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "ContactListSweepActionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionStarted() / uri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "data1"

    aput-object v4, v2, v9

    const-string v4, "is_super_primary"

    aput-object v4, v2, v12

    const-string v4, "mimetype"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_2
    return-void

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    goto :goto_2
.end method
