.class Lcom/android/mms/ui/ComposeMessageFragment$5;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x43

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    :cond_3
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$900(Lcom/android/mms/ui/ComposeMessageFragment;)V

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
