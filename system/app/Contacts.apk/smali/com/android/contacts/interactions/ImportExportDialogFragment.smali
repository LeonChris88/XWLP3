.class public Lcom/android/contacts/interactions/ImportExportDialogFragment;
.super Landroid/app/DialogFragment;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;


# static fields
.field public static mExternalSdCardMounted:Z

.field public static mExternalSdCardStoragePath:Ljava/lang/String;

.field public static mSdCardMounted:Z

.field public static mSdCardStoragePath:Ljava/lang/String;

.field public static mStorageListener:Landroid/os/storage/StorageEventListener;

.field public static mStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private isAirplaneMode:Z

.field public mImportPath:Ljava/lang/String;

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/contacts/interactions/ImportExportDialogFragment$1;

    invoke-direct {v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment$1;-><init>()V

    sput-object v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageListener:Landroid/os/storage/StorageEventListener;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v0, ""

    sput-object v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    sput-boolean v1, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardMounted:Z

    const-string v0, ""

    sput-object v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    sput-boolean v1, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lookup"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/interactions/ImportExportDialogFragment;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->handleImportRequest(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/interactions/ImportExportDialogFragment;)Lcom/android/contacts/preference/ContactsPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    return-object v0
.end method

.method private checkStorageState()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    sput-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v8, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    :cond_0
    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    array-length v1, v5

    const-string v3, ""

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v4, v5, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "sd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-nez v7, :cond_3

    sput-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    const-string v7, "mounted"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sput-boolean v10, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sput-boolean v9, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    goto :goto_1

    :cond_3
    const-string v7, "sd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_1

    sput-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    const-string v7, "mounted"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sput-boolean v10, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardMounted:Z

    :cond_4
    return-void

    :cond_5
    sput-boolean v9, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardMounted:Z

    goto :goto_1
.end method

.method private handleImportRequest(I)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-le v3, v5, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v5, "resourceId"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0a0111

    sget-object v7, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v5, p0, v6, v7, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    :goto_1
    return v4

    :pswitch_0
    sget-object v6, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->setImportPath(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v6, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->setImportPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-ne v3, v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    :goto_2
    invoke-static {v6, p1, v4}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    move v4, v5

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0274
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2

    new-instance v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;-><init>()V

    const-string v1, "ImportExportDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getImportPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mImportPath:Ljava/lang/String;

    return-object v0
.end method

.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "resourceId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->dismiss()V

    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    const v9, 0x7f090003

    const/high16 v8, 0x7f09

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0400b6

    invoke-direct {v0, p0, v6, v7, v2}, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;-><init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    invoke-direct {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->checkStorageState()V

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    iput-boolean v5, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->isAirplaneMode:Z

    sget-boolean v5, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    if-eqz v5, :cond_2

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f0a0274

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f0a0272

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_2
    sget-boolean v5, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardMounted:Z

    if-eqz v5, :cond_4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f0a0275

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f0a0273

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->isAirplaneMode:Z

    if-nez v5, :cond_5

    const v5, 0x7f0a00ba

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const v5, 0x7f0a027d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_5
    const v5, 0x7f090004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const v5, 0x7f0a0238

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_6
    new-instance v1, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;-><init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0100

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public setImportPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mImportPath:Ljava/lang/String;

    return-void
.end method
