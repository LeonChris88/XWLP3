.class public Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;
.super Landroid/app/DialogFragment;
.source "SimInitializingDialogFragment.java"


# static fields
.field private static mTitleStringResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->mTitleStringResId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;I)V
    .locals 2

    sput p1, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->mTitleStringResId:I

    new-instance v0, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;-><init>()V

    const-string v1, "SimInitializingDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->mTitleStringResId:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a020a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
