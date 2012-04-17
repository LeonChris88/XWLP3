.class Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;
.super Ljava/lang/Object;
.source "GroupDeleteListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;

.field final synthetic val$menuAdapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;->val$menuAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    const v5, 0x7f0a02c0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$502(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;->val$menuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$400(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "deleteCompleted"

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/contacts/ContactSaveService;->createGroupMultipleDeleteIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$400(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "deleteCompleted"

    const/4 v6, 0x1

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/contacts/ContactSaveService;->createGroupMultipleDeleteIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0228
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
