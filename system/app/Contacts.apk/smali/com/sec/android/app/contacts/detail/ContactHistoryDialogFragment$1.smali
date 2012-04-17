.class Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactHistoryDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->access$000(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->access$102(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->access$102(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;Z)Z

    goto :goto_0
.end method
