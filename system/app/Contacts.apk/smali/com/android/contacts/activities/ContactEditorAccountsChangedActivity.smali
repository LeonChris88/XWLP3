.class public Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;
.super Landroid/app/Activity;
.source "ContactEditorAccountsChangedActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;


# instance fields
.field private mAccountListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

.field private final mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mAddAccountClickListener:Landroid/view/View$OnClickListener;

.field private mChangeAccountDialogFragment:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

.field private mIntentMediaExtra:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIntentMediaExtra:Z

    new-instance v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/util/AccountsListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$200()Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 1

    sget-object v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object v0
.end method

.method public static getEditorUtilInstance()Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 1

    sget-object v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object v0
.end method

.method private saveAccountAndReturnResult(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 3

    const-string v1, "vnd.sec.contact.sim"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a0085

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, p1}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, p2, p3}, Lcom/android/contacts/editor/ContactEditorUtils;->getCreatedAccount(ILandroid/content/Intent;)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v2

    sput-object v2, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "insert_media"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIntentMediaExtra:Z

    new-instance v2, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mChangeAccountDialogFragment:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->requestWindowFeature(I)Z

    if-gez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot have a negative number of accounts"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    const v4, 0x7f0a0251

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot have a negative number of accounts"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-le v1, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIntentMediaExtra:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mChangeAccountDialogFragment:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v2, v4, v3, v5}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->show(Landroid/app/FragmentManager;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mChangeAccountDialogFragment:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v2, v4, v3, v5}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->show(Landroid/app/FragmentManager;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mChangeAccountDialogFragment:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0a0250

    sget-object v4, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->show(Landroid/app/FragmentManager;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_0
.end method
