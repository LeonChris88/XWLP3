.class Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field private isGoogleQueryCompleted:Z

.field private isGroupQueryCompleted:Z

.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10

    const/16 v1, 0x2c

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v4

    iget-object v4, v4, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    if-eq p0, v4, :cond_7

    const-string v0, "GroupBrowseListFragment"

    const-string v2, "onQueryComplete: discard result, the query handler is reset!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2a

    if-ne v0, p1, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    const-string v0, "GroupBrowseListFragment"

    const-string v1, "group cursor close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x2b

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v0, "GroupBrowseListFragment"

    const-string v1, "group cursor close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    const-string v0, "GroupBrowseListFragment"

    const-string v1, "google plus cursor close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-ne v1, p1, :cond_6

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v0, "GroupBrowseListFragment"

    const-string v1, "group cursor close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v0, "GroupBrowseListFragment"

    const-string v1, "google cursor close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    const-string v0, "GroupBrowseListFragment"

    const-string v1, "account cursor close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "unknown query"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    if-eqz p3, :cond_b

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "group query finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    iput-object p3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    iput-boolean v9, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$600(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    goto/16 :goto_0

    :pswitch_1
    iget-boolean v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    if-eqz v4, :cond_0

    const-string v4, "GroupBrowseListFragment"

    const-string v5, "google plus query finished"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v4

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_8

    move v0, v9

    :cond_8
    invoke-static {v4, v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$700(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Z)V

    if-eqz p3, :cond_9

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    const-string v0, "GroupBrowseListFragment"

    const-string v4, "google plus cursor close"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v0, "content://com.android.contacts/groups_list/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v9, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGoogleQueryCompleted:Z

    goto/16 :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGoogleQueryCompleted:Z

    if-eqz v1, :cond_0

    const-string v1, "GroupBrowseListFragment"

    const-string v2, "account query finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iput-object p3, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$800(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_a
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$900(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Landroid/database/Cursor;)V

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGoogleQueryCompleted:Z

    goto/16 :goto_0

    :cond_b
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "cursor null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x2a

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
