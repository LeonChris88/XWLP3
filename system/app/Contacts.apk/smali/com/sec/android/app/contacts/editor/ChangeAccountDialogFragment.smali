.class public Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "ChangeAccountDialogFragment.java"


# static fields
.field private static mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

.field private static final mPositiveOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$1;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mPositiveOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$100()Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 1

    sget-object v0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/editor/ContactEditorUtils;)Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 0

    sput-object p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object p0
.end method

.method private onAccountSelected(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 4

    sget-object v1, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getEditorUtilInstance()Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    :cond_0
    sget-object v1, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "vnd.sec.contact.sim"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0085

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, p1}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static show(Landroid/app/FragmentManager;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title_res_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "list_filter"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "extra_args"

    if-nez p3, :cond_0

    sget-object p3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v8, "list_filter"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8, v4}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)V

    new-instance v3, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;Lcom/android/contacts/util/AccountsListAdapter;)V

    const-string v8, "title_res_id"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a01fc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$3;

    invoke-direct {v9, p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;)V

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0250

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "title_res_id"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v8, 0x7f040013

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02b8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$4;

    invoke-direct {v9, p0, v0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$4;-><init>(Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;Lcom/android/contacts/util/AccountsListAdapter;)V

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
