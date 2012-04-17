.class Lcom/android/mms/ui/RecipientsEditor$1;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RecipientsEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientsEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor$1;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    if-nez p3, :cond_1

    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsEditor$1;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v1}, Lcom/android/mms/ui/RecipientsEditor;->access$000(Lcom/android/mms/ui/RecipientsEditor;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditorHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method
