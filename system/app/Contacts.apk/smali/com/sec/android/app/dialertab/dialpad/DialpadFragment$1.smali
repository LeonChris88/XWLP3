.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;
.super Landroid/os/Handler;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v3, 0x8

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x111

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "DialerHandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<<<<<<<<< TIME OUT!!!! >>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x70

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<++++++++++>Sync UI"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$600()Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "args"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v1, v3, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
