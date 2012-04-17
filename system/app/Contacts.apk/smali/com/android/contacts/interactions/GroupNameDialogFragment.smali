.class public abstract Lcom/android/contacts/interactions/GroupNameDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupNameDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/interactions/GroupNameDialogFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method private updateOkButtonState(Landroid/app/AlertDialog;)V
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->updateOkButtonState(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected abstract getTitleResourceId()I
.end method

.method protected abstract initializeGroupLabelEditText(Landroid/widget/EditText;)V
.end method

.method protected abstract onCompleted(Ljava/lang/String;)V
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040082

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0199

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->initializeGroupLabelEditText(Landroid/widget/EditText;)V

    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->getTitleResourceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;-><init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    check-cast p1, Landroid/app/AlertDialog;

    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->updateOkButtonState(Landroid/app/AlertDialog;)V

    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
