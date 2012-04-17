.class public final Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectDetailDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->onItemSelected(IILjava/lang/String;)V

    return-void
.end method

.method private onItemSelected(IILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;->onItemChosen(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "title"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "items"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "data"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;->onItemSelectorCancelled()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v9, "type"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "title"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v9, "data"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "items"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0400b6

    invoke-direct {v0, v9, v10, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v3, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;

    invoke-direct {v3, p0, v4, v0, v8}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;Ljava/lang/String;Landroid/widget/ArrayAdapter;I)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v9, -0x1

    invoke-virtual {v2, v0, v9, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method
