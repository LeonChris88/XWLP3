.class Lcom/android/mms/ui/ConversationListFragment$13;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    sparse-switch p2, :sswitch_data_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :sswitch_0
    const-string v3, "Mms/ConversationListFragment"

    const-string v4, "mThreadListKeyListener.onKey(),KEYCODE_DEL"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemId()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1702(Lcom/android/mms/ui/ConversationListFragment;I)I

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$1800(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_0

    :sswitch_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemPosition()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "mThreadListKeyListener.onKey(),KEYCODE_DPAD_RIGHT"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->requestFocusOnComposer()Z

    move-result v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_1
        0x16 -> :sswitch_2
        0x43 -> :sswitch_0
    .end sparse-switch
.end method
