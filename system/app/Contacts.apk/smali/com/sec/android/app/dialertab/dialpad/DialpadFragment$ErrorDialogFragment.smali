.class public Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialogFragment"
.end annotation


# instance fields
.field private mMessageResId:Ljava/lang/Integer;

.field private mTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->newInstanceInter(ILjava/lang/Integer;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method private static newInstanceInter(ILjava/lang/Integer;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 4

    new-instance v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-direct {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "argTitleResId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string v2, "argMessageResId"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argTitleResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argMessageResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argMessageResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
