.class public Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(II)Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;
    .locals 3

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "moveError"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method getOwner()Lcom/android/settings/applications/InstalledAppDetails;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/InstalledAppDetails;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    const v5, 0x7f0b0484

    const v6, 0x7f0b0483

    const/4 v10, 0x0

    const v9, 0x7f0b0482

    const v8, 0x1080027

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "moveError"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v0, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0480

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0481

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    :goto_0
    return-object v3

    :pswitch_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0487

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0488

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$3;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$3;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    :pswitch_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0489

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b048a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$4;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$4;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_4
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0499

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b049a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$5;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$5;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b049c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/settings/applications/InstalledAppDetails;->access$1000(Lcom/android/settings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b049b

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_6
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b049f

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b04a0

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$6;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$6;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
