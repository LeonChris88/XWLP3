.class Lcom/android/mms/ui/ComposeMessageFragment$51;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mResult:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$51;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$51;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$51;->mResult:I

    const v2, 0x7f090199

    const/4 v3, 0x0

    const/4 v4, 0x3

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3100(Lcom/android/mms/ui/ComposeMessageFragment;IILandroid/net/Uri;IZZ)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSubjectSMS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$51;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$51;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$51;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$51;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$51;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v0, v5}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZZ)V

    :cond_0
    return-void

    :cond_1
    move v0, v5

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$51;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onUserInteraction()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$51;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3000(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/CharSequence;III)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$51;->mResult:I

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$51;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)V

    return-void
.end method
