.class Lcom/android/mms/ui/ComposeMessageFragment$41;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$append:Z

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$fileUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZLandroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$41;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$41;->val$fileUri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$41;->val$append:Z

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$41;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$41;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$41;->val$fileUri:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$41;->val$append:Z

    const/4 v4, 0x0

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6300(Lcom/android/mms/ui/ComposeMessageFragment;ILandroid/net/Uri;ZZZ)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$41;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
