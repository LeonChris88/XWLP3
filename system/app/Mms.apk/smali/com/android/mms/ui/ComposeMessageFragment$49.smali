.class Lcom/android/mms/ui/ComposeMessageFragment$49;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->handleSendIntent(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$dismissProgress:Ljava/lang/Runnable;

.field final synthetic val$numberToImport:I

.field final synthetic val$showProgress:Ljava/lang/Runnable;

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;ILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$numberToImport:I

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$uris:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$showProgress:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$dismissProgress:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const v13, 0x7f090183

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$numberToImport:I

    if-ge v1, v10, :cond_4

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    const-string v6, "content://com.android.contacts/contacts/as_vcard/"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v4, "text/x-vCard"

    :goto_1
    if-eqz v4, :cond_3

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v10, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8100(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    check-cast v8, Landroid/net/Uri;

    invoke-static {v10, v4, v8, v12, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7800(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;ZZ)V

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->onAttachmentChanged(Z)V

    iget v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$numberToImport:I

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v10

    invoke-virtual {v10, v14}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    sget-boolean v10, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v10

    invoke-virtual {v10, v14}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object v10, v8

    check-cast v10, Landroid/net/Uri;

    invoke-virtual {v11, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Lcom/android/mms/ui/ComposeMessageFragment$49$1;

    invoke-direct {v11, p0, v3}, Lcom/android/mms/ui/ComposeMessageFragment$49$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$49;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    if-nez v4, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Lcom/android/mms/ui/ComposeMessageFragment$49$2;

    invoke-direct {v11, p0, v3}, Lcom/android/mms/ui/ComposeMessageFragment$49$2;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$49;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$dismissProgress:Ljava/lang/Runnable;

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v10

    invoke-static {v10, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void
.end method
