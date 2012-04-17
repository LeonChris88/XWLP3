.class Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$3;
.super Ljava/lang/Object;
.source "ContactHistoryDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    invoke-static {v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->access$100(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "historyDeleteShowNeverAgain"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$Listener;

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$Listener;

    if-nez v2, :cond_2

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$Listener;->onDeleteItem()V

    goto :goto_0
.end method
