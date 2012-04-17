.class final Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ToButtonMenuClickListener"
.end annotation


# instance fields
.field private mId:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4300(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12102(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ToButton;->delete(Landroid/os/Handler;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4000(Lcom/android/mms/ui/ComposeMessageFragment;ZZ)Z

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->moveCursorToEnd()V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mId:I

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12000(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3802(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
