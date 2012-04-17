.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;
.super Landroid/os/Handler;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v7, 0x111

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$600()Landroid/os/ConditionVariable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$600()Landroid/os/ConditionVariable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->close()V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v6, "<++++++++++>Sync"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v4, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v4, v6, :cond_1

    const/16 v4, 0x70

    iput v4, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x13

    iput v4, v0, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    iput v4, v0, Landroid/os/Message;->arg2:I

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "args"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    if-nez v4, :cond_5

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    if-nez v2, :cond_2

    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v4, v6, :cond_2

    const/16 v4, 0x70

    iput v4, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x12

    iput v4, v0, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    goto :goto_1

    :cond_2
    const/16 v4, 0x70

    iput v4, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x14

    iput v4, v0, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    const/16 v4, 0x70

    iput v4, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x13

    iput v4, v0, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    iput v4, v0, Landroid/os/Message;->arg2:I

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "args"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    const/16 v4, 0x70

    iput v4, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x12

    iput v4, v0, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    const/16 v6, 0x111

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method
