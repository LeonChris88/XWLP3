.class public Lcom/android/contacts/util/AccountSelectionUtil;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;
    }
.end annotation


# static fields
.field public static mPath:Landroid/net/Uri;

.field public static mVCardShare:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {p0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSim(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    :sswitch_1
    invoke-static {p0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSdCard(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    :sswitch_2
    invoke-static {p0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSdCard(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a00ba -> :sswitch_0
        0x7f0a0274 -> :sswitch_1
        0x7f0a0275 -> :sswitch_2
    .end sparse-switch
.end method

.method public static doImportFromSdCard(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "ImportExportDialogFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;

    if-eqz p1, :cond_0

    const-string v2, "account_name"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "account_type"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data_set"

    iget-object v3, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    sget-boolean v2, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    if-eqz v2, :cond_1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/contacts/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_1
    const-string v2, "importPath"

    invoke-virtual {v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getImportPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static doImportFromSim(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.IMPORT_SIM_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/sim-contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data_set"

    iget-object v2, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-class v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/sim-contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_2

    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data_set"

    iget-object v2, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v1, "com.samsung.usim.contacts"

    const-string v2, "com.samsung.usim.contacts.SecSimContacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 9

    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v5

    const v1, 0x7f0a00bb

    if-ne p1, v1, :cond_2

    invoke-virtual {v5}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v3

    :goto_0
    const-string v1, "AccountSelectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The number of available accounts: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/view/ContextThemeWrapper;

    const v1, 0x103000c

    invoke-direct {v7, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v1, "layout_inflater"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/contacts/util/AccountSelectionUtil$1;

    const v2, 0x1090004

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/util/AccountSelectionUtil$1;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;Lcom/android/contacts/model/AccountTypeManager;)V

    if-nez p2, :cond_0

    new-instance v6, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    invoke-direct {v6, p0, v3, p1}, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    move-object p2, v6

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lcom/android/contacts/util/AccountSelectionUtil$2;

    invoke-direct {p3}, Lcom/android/contacts/util/AccountSelectionUtil$2;-><init>()V

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0111

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method
