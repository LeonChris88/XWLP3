.class public final Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GroupExpandableListAdapter"
.end annotation


# instance fields
.field mAccountsCursor:Landroid/database/Cursor;

.field mCursor:Landroid/database/Cursor;

.field mGoogleAccountsCursor:Landroid/database/Cursor;

.field mGroupCursor:Landroid/database/Cursor;

.field mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

.field subTitlePosition:I

.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;Z)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    new-instance v1, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    invoke-direct {v1, p1, p2}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    move-object v0, p2

    return-void
.end method

.method private MergeAllCursor()Landroid/database/Cursor;
    .locals 8

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-nez v6, :cond_4

    :cond_0
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-nez v6, :cond_1

    move v1, v4

    :goto_0
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-nez v6, :cond_2

    move v2, v4

    :goto_1
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-nez v6, :cond_3

    move v3, v4

    :goto_2
    const-string v4, "GroupBrowseListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group cursor is null : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GroupBrowseListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "google cursor is  null : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GroupBrowseListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account cursor is  null : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v0

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const-string v4, "GroupBrowseListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group cursor is closed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GroupBrowseListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "google cursor is closed :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GroupBrowseListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account cursor is closed :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    aput-object v7, v6, v5

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    aput-object v5, v6, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    aput-object v5, v6, v4

    invoke-direct {v0, v6}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto/16 :goto_3
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->startQuery()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->cancelQuery()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->closeAllCursor()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->startGooglePlusQuery()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGoogleAccountInfo(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->MergeAllCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setSubTitlePositon(Landroid/database/Cursor;)V

    return-void
.end method

.method private cancelQuery()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->cancelOperation(I)V

    return-void
.end method

.method private closeAllCursor()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "GroupBrowseListFragment"

    const-string v1, "closeallCursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    :cond_3
    return-void
.end method

.method private getAllGoogleAccounts()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    const-string v4, "com.google"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getGoogleAccountInfo(Z)V
    .locals 8

    const/4 v7, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    const-string v5, "plus"

    iget-object v6, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v5, 0x8

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "xxx"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;

    sget-object v6, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {v5, v6, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    const-string v5, "GroupBrowseListFragment"

    const-string v6, "google query is finished "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetAsyncQueryHandler()V
    .locals 3

    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    return-void
.end method

.method private setSubTitlePositon(Landroid/database/Cursor;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    goto :goto_0
.end method

.method private startGooglePlusQuery()V
    .locals 9

    const/4 v2, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data_set"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " == \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "plus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2b

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data_set"

    aput-object v6, v4, v5

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startQuery()V
    .locals 8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->resetAsyncQueryHandler()V

    const-string v0, "content://com.android.contacts/groups_list/aggregated_not_assigned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2a

    sget-object v4, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v3, p2, p3}, Lcom/android/contacts/group/GroupBrowseListFragment;->getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x6

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v4, 0x7f0a0226

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$300(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$400(Lcom/android/contacts/group/GroupBrowseListFragment;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    const-string v4, "com.google"

    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p4, :cond_1

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const v5, 0x7f020166

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$300(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v6}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$400(Lcom/android/contacts/group/GroupBrowseListFragment;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void

    :cond_1
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const v5, 0x7f020167

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v4, p2, p3}, Lcom/android/contacts/group/GroupBrowseListFragment;->getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public bindHeader(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 5

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    iget v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    if-nez p3, :cond_2

    :cond_0
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    if-eq p3, v1, :cond_1

    if-ne p3, v2, :cond_4

    :cond_1
    if-ne p3, v2, :cond_3

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0a0227

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_2
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0a00fd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-super {p0, p1}, Landroid/widget/CursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 11

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v0, "com.google"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "content://com.android.contacts/groups_list/assigned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_type==\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_name==\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v9, :cond_1

    const-string v0, "data_set IS NULL"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v8, 0x0

    :cond_0
    return-object v8

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data_set==\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "couldn\'t move cursor to position "

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p2, p4}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->bindHeader(Landroid/view/View;Landroid/database/Cursor;I)V

    return-object v1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040076

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020165

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;-><init>()V

    const v3, 0x7f0d00e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const v3, 0x7f0d017c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const v3, 0x7f0d017d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v3, 0x7f0d017e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v3, 0x7f0d017f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const v3, 0x7f0d0180

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040076

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;-><init>()V

    const v3, 0x7f0d017b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    const v3, 0x7f0d0171

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v3, 0x7f0d00e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const v3, 0x7f0d017c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const v3, 0x7f0d017d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v3, 0x7f0d017e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v3, 0x7f0d017f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const v3, 0x7f0d0180

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setSubTitlePositon(Landroid/database/Cursor;)V

    invoke-super {p0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged()V

    return-void
.end method
