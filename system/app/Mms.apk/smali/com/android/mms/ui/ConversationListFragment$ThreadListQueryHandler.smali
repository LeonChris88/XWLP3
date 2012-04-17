.class final Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field private mDeleteEventHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 8

    const/16 v7, 0xc9

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$3002(Z)Z

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v3, "Mms/ConversationListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeleteComplete(),DELETE_ALL_CONVERSATION_TOKEN,mIsDeleteMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$1100(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/DraftCache;->refresh()V

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$1100(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3, v6, v6}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZ)V

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    const-string v3, "Mms/ConversationListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeleteComplete(),DELETE_CONVERSATION_TOKEN,mIsDeleteMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$1100(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    move-object v0, p2

    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    iget-wide v1, v0, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    if-lez p3, :cond_3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v6}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    :cond_3
    iget-boolean v3, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$1100(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3, v6, v6}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZ)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15

    sparse-switch p1, :sswitch_data_0

    const-string v1, "Mms/ConversationListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryComplete called with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v1, "Mms/ConversationListFragment"

    const-string v4, "onQueryComplete(),THREAD_LIST_FAKE_VIEW_QUERY_TOKEN"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    const/4 v12, 0x0

    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v12

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v4, 0x0

    invoke-static {v1, v12, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;IZ)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v4, 0xc8

    invoke-static {v1, v4, v5}, Lcom/android/mms/ui/ConversationListFragment;->access$2800(Lcom/android/mms/ui/ConversationListFragment;J)V

    goto :goto_0

    :sswitch_1
    const-string v1, "Mms/ConversationListFragment"

    const-string v4, "onQueryComplete(),THREAD_LIST_QUERY_TOKEN"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    const/4 v13, 0x0

    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1, v13}, Lcom/android/mms/ui/ConversationListFragment;->access$2900(Lcom/android/mms/ui/ConversationListFragment;I)V

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v4, 0x1

    invoke-static {v1, v13, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;IZ)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1100(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->access$3000()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->reCalulateCheckedThreads()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v10

    if-lez v10, :cond_8

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_7

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/mms/ui/ConversationListFragment;->setSelectAll(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    :goto_2
    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->access$3000()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3002(Z)Z

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3100(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3200(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v1

    const/4 v4, -0x1

    if-le v1, v4, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3300(Lcom/android/mms/ui/ConversationListFragment;)V

    goto :goto_3

    :sswitch_2
    const-string v1, "Mms/ConversationListFragment"

    const-string v4, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Long;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3500(Lcom/android/mms/ui/ConversationListFragment;)V

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$1800(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$3600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v6

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_a

    const/4 v1, 0x1

    move v5, v1

    :goto_4
    if-eqz p3, :cond_b

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_b

    const/4 v1, 0x1

    :goto_5
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v7

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$1700(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_c

    const v4, 0x7f090189

    :goto_6
    invoke-static {v6, v5, v1, v7, v4}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1, v11}, Lcom/android/mms/ui/ConversationListFragment;->access$3402(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    const-string v1, "Mms/ConversationListFragment"

    const-string v4, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    move v5, v1

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    goto :goto_5

    :cond_c
    const v4, 0x7f0901ba

    goto :goto_6

    :sswitch_3
    if-eqz p3, :cond_0

    const-string v1, "Mms/ConversationListFragment"

    const-string v4, "onQueryComplete(),LOCKED_MESSAGES_IN_SELECTED_TOKEN"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/mms/ui/ConversationListAdapter;->isCheckedThreadId(J)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v14, 0x1

    :cond_e
    :goto_7
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedList()[Ljava/lang/Long;

    move-result-object v9

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3500(Lcom/android/mms/ui/ConversationListFragment;)V

    new-instance v4, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    const-wide/16 v5, -0x1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1800(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v7

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v8

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v6

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1700(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_10

    const v1, 0x7f090189

    :goto_8
    invoke-static {v4, v5, v14, v6, v1}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v1, v11}, Lcom/android/mms/ui/ConversationListFragment;->access$3402(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    const-string v1, "Mms/ConversationListFragment"

    const-string v4, "onQueryComplete(),LOCKED_MESSAGES_IN_SELECTED_TOKEN"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_7

    :cond_10
    const v1, 0x7f0901ba

    goto :goto_8

    nop

    :sswitch_data_0
    .sparse-switch
        0x6a4 -> :sswitch_0
        0x6a5 -> :sswitch_1
        0x70b -> :sswitch_2
        0x70d -> :sswitch_3
    .end sparse-switch
.end method

.method public setmDeleteEventHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    return-void
.end method
