.class public Lcom/android/mms/ui/PushMessageDialog;
.super Landroid/app/Activity;
.source "PushMessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;
    }
.end annotation


# instance fields
.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private mOkListener:Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/PushMessageDialog;->mDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/mms/ui/PushMessageDialog;->mOkListener:Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;

    new-instance v0, Lcom/android/mms/ui/PushMessageDialog$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/PushMessageDialog$2;-><init>(Lcom/android/mms/ui/PushMessageDialog;)V

    iput-object v0, p0, Lcom/android/mms/ui/PushMessageDialog;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f080092

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/PushMessageDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/mms/ui/PushMessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f02016f

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/PushMessageDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "href"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/mms/ui/PushMessageDialog$1;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/PushMessageDialog$1;-><init>(Lcom/android/mms/ui/PushMessageDialog;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/mms/ui/PushMessageDialog;->mOkListener:Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0901a5

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    iget-object v4, p0, Lcom/android/mms/ui/PushMessageDialog;->mOkListener:Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x104

    iget-object v4, p0, Lcom/android/mms/ui/PushMessageDialog;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030024

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v3, "wtai://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0901a7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v3, 0x7f080093

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/PushMessageDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/mms/ui/PushMessageDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateClass0SoundnVibrate(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0901a6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
