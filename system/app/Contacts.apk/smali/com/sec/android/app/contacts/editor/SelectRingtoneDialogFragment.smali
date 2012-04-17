.class public final Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectRingtoneDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;->onRingtoneSelectorCancelled()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    const v6, 0x7f0a0221

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    new-instance v0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$1;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0400b6

    invoke-direct {v0, p0, v4, v5, v2}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    const v4, 0x7f0a0222

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const v4, 0x7f0a0225

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    new-instance v1, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;Landroid/widget/ArrayAdapter;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
