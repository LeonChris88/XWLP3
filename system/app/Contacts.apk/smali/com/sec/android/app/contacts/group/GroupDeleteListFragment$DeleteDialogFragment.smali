.class public Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupDeleteListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "deleteGroup"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    const v1, 0x7f0a0228

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0a0229

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$1;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0400b6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;)V

    new-instance v6, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;Landroid/widget/ArrayAdapter;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0038

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
