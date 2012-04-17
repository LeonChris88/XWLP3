.class public final Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "InteractionGroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;
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

.field mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

.field subTitlePosition:I

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;Z)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    return-void
.end method

.method private MergeAllCursor()Landroid/database/Cursor;
    .locals 4

    new-instance v0, Landroid/database/MergeCursor;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->startQuery()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getGoogleAccountInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->MergeAllCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->setSubTitlePositon(Landroid/database/Cursor;)V

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

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

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

.method private getGoogleAccountInfo()V
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x7

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;

    sget-object v6, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {v5, v6, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    return-void
.end method

.method private setSubTitlePositon(Landroid/database/Cursor;)V
    .locals 4

    const/4 v3, 0x3

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

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    goto :goto_0
.end method

.method private startQuery()V
    .locals 13

    const/4 v2, 0x0

    const-string v0, "content://com.android.contacts/groups_list/aggregated_not_assigned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v0, "content://com.android.contacts/groups_list/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2a

    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    const/16 v5, 0x2b

    sget-object v8, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    move-object v6, v2

    move-object v7, v12

    move-object v9, v2

    move-object v10, v2

    move-object v11, v2

    invoke-virtual/range {v4 .. v11}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v3, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x5

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v4, 0x7f0a0226

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-eqz p4, :cond_1

    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->headerDivider:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->headerDivider:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    const-string v4, "com.google"

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v4, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-super {p0, p1}, Landroid/widget/CursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 11

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x4

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
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getGroup(I)Landroid/database/Cursor;

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
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p2, p4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-object v1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040088

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;-><init>()V

    const v3, 0x7f0d00e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const v3, 0x7f0d017d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v3, 0x7f0d017e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v3, 0x7f0d0180

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040088

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;-><init>()V

    const v3, 0x7f0d017b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    const v3, 0x7f0d0171

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v3, 0x7f0d00e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const v3, 0x7f0d017d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v3, 0x7f0d017e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v3, 0x7f0d0180

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->setSubTitlePositon(Landroid/database/Cursor;)V

    invoke-super {p0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged()V

    return-void
.end method
