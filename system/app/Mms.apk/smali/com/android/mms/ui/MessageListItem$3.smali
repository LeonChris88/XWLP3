.class Lcom/android/mms/ui/MessageListItem$3;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$700(Lcom/android/mms/ui/MessageListItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$1100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$1000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$1200(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0
.end method
