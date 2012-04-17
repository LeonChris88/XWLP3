.class Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "InteractionGroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    if-eqz p3, :cond_1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$500()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    iput-object p3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGroupCursor:Landroid/database/Cursor;

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$500()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    iput-object p3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)Landroid/database/Cursor;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$700(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "cursor null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
