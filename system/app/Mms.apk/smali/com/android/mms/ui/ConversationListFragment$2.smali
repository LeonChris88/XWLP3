.class Lcom/android/mms/ui/ConversationListFragment$2;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->onActivityCreated(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$2;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$2;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$2;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$2;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/ConversationListAdapter;->setChecked(J)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$2;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$2;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$2;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$2;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$2;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$2;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_2
.end method
