.class Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactHistoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$700(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$700(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearTextFilter()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1100(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$800(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$800(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$700(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$700(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-static {v1, p3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1200(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1100(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setLoading(Z)V

    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-static {v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$200(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    if-eqz p3, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    iget-object v1, v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-interface {v1, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;->onQueryCompleted(Z)V

    :cond_5
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2

    const/16 v0, 0x1e

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$002(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Z)Z

    :cond_0
    return-void
.end method
