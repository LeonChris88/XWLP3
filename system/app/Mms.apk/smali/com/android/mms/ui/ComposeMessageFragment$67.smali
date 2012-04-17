.class Lcom/android/mms/ui/ComposeMessageFragment$67;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->previewSlideshow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$67;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$67;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$67;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$67;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$67;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$67;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
