.class Lcom/android/mms/ui/ComposeMessageFragment$23;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onAttachmentChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$sendMultiple:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->val$sendMultiple:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3400(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->val$sendMultiple:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3500(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
