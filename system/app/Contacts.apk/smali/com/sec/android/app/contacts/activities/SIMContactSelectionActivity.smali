.class public Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;,
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;,
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;
    }
.end annotation


# static fields
.field private static mCP_Start:I

.field private static mDialog:Landroid/app/ProgressDialog;

.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mActionCode:I

.field private mCanceled:Z

.field private mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

.field private mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field protected mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchView:Landroid/widget/SearchView;

.field public mToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->sEmptyContentValues:Landroid/content/ContentValues;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    new-instance v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setButtonClickable(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$800()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$802(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    sput-object p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private configureActivityTitle(Landroid/app/ActionBar;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const v1, 0x7f0a027d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_1
    const v1, 0x7f0a00ba

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x136 -> :sswitch_1
    .end sparse-switch
.end method

.method private setButtonClickable(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;-><init>()V

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectionVisible(Z)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setMultiSelectEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d00e6

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    :sswitch_1
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;-><init>()V

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectionVisible(Z)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/16 v2, -0xb

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x136 -> :sswitch_1
    .end sparse-switch
.end method

.method public getActionCode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    return v0
.end method

.method public isSIMEnabled()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    :goto_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    const-string v2, "namecard_string"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "namecard_result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setupActionListener()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    :cond_2
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/contacts/widget/ContextMenuAdapter;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/16 v13, 0x1e

    const/4 v12, 0x0

    const/4 v11, -0x2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v8, "actionCode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    const-string v8, "mode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0, v12}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    const-string v8, "DTM"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "MAX"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "TMZ"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "COS"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "CRO"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "CP_Start"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCP_Start:I

    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactsRequest;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactsRequest;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v8, Landroid/accounts/Account;

    invoke-direct {v8, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;

    :cond_5
    const v8, 0x7f0400bf

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->configureListFragment()V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v8, 0x7f040018

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v8, 0x7f0d009e

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0d009f

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v8, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$2;

    invoke-direct {v8, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v13, v13}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v11, v11, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->configureActivityTitle(Landroid/app/ActionBar;)V

    :cond_6
    const v8, 0x7f0d00ea

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SearchView;

    iput-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const v9, 0x7f0a01ac

    invoke-virtual {p0, v9}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    invoke-direct {p0, v12}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setButtonClickable(Z)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    :cond_1
    const-string v1, "DTM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MAX"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "TMZ"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "COS"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CRO"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x136

    if-ne v1, v2, :cond_3

    sget v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCP_Start:I

    if-ne v1, v3, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SIM_IMPORT_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    :cond_4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    :cond_1
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSearchMode(Z)V

    return v2

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setupActionListener()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setOnSIMContactPickerActionListener(Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
