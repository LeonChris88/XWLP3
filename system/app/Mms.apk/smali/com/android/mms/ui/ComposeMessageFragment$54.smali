.class Lcom/android/mms/ui/ComposeMessageFragment$54;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$54;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$54;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-nez v7, :cond_2

    move v1, v5

    :goto_0
    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$54;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$54;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v7, v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->setChecked(JLjava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$54;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$54;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$54;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$54;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    move v1, v6

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$54;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$54;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_2
.end method
