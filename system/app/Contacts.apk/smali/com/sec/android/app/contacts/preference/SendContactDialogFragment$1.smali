.class Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$1;
.super Ljava/lang/Object;
.source "SendContactDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;

    invoke-static {v0, p2}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->access$000(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
