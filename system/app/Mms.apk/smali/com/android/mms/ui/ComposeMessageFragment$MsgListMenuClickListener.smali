.class final Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick(),item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-nez v3, :cond_2

    :cond_0
    move v7, v8

    :cond_1
    :goto_0
    return v7

    :cond_2
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    iget-object v6, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move v7, v8

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3300(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/MessageItem;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3400(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3500(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->showSip(Landroid/view/View;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_0

    :sswitch_2
    iget-object v1, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageOptions;->copyToClipboard(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/ui/MessageOptions;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    :cond_3
    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v4, v3, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-direct {v1, v2, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-boolean v2, v3, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3600(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object v0, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {v0, v3, v7}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {v0, v3, v8}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_0

    :sswitch_9
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sendto"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3700(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "smsto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-wide v2, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/android/mms/ui/MessageOptions;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3802(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_c
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/mms/ui/TranslateActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "fromString"

    iget-object v2, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "editable"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "isMms"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "hasRecipient"

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3900(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v7

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    goto/16 :goto_0

    :cond_4
    move v0, v8

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x72 -> :sswitch_0
        0x75 -> :sswitch_5
        0x76 -> :sswitch_6
        0x79 -> :sswitch_4
        0x7c -> :sswitch_2
        0x7d -> :sswitch_1
        0x7f -> :sswitch_b
        0x80 -> :sswitch_7
        0x81 -> :sswitch_8
        0x83 -> :sswitch_3
        0x87 -> :sswitch_a
        0x88 -> :sswitch_9
        0x9b -> :sswitch_c
    .end sparse-switch
.end method
