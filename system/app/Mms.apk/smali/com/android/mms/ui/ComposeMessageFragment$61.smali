.class Lcom/android/mms/ui/ComposeMessageFragment$61;
.super Landroid/content/BroadcastReceiver;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    sget-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11200(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11300(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    :cond_0
    sget-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageListView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    :cond_1
    return-void
.end method
