.class final Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;
.super Ljava/lang/Object;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SIMContactPickerActionListener"
.end annotation


# instance fields
.field mSelectedInfoHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public exportAfterWarningDialog(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0280

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$1;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onAllDataDeleted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$400(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Z)V

    return-void
.end method

.method public onCancelAction()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setResult(I)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    return-void
.end method

.method public onCopyAction(Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const v2, 0x7f0a005a

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0, v4}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$102(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;I)I

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->mSelectedInfoHashSet:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isSIMEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimMaxCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimUsedCount()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v1, 0x7f0a027e

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->exportAfterWarningDialog(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v1, 0x7f0a027f

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    const/16 v1, 0x136

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isSIMEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isDiskFull()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    new-instance v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-direct {v1, v2, v3, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/util/HashSet;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$302(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v1, 0x7f0a00c4

    const v2, 0x7f0a0281

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->showAlertDialog(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public onOneDataInputed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$400(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Z)V

    return-void
.end method

.method public showAlertDialog(Landroid/content/Context;II)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "ok"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
