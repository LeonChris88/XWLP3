.class Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidRecipientsListener"
.end annotation


# instance fields
.field private mInvalidRecipients:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->mInvalidRecipients:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->mInvalidRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->mInvalidRecipients:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setSelection(I)V

    return-void
.end method
