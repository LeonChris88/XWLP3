.class public Lcom/android/contacts/vcard/ExportVCardActivity;
.super Landroid/app/Activity;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/ExportVCardActivity$1;,
        Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;,
        Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;
    }
.end annotation


# instance fields
.field private mConnected:Z

.field private mErrorReason:Ljava/lang/String;

.field private final mIncomingMessenger:Landroid/os/Messenger;

.field private mPath:Ljava/lang/String;

.field private volatile mProcessOngoing:Z

.field private mService:Lcom/android/contacts/vcard/VCardService;

.field private mTargetFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;-><init>(Lcom/android/contacts/vcard/ExportVCardActivity;Lcom/android/contacts/vcard/ExportVCardActivity$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mIncomingMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/vcard/ExportVCardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/vcard/ExportVCardActivity;)Lcom/android/contacts/vcard/VCardService;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/vcard/ExportVCardActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindAndFinish()V

    return-void
.end method

.method private declared-synchronized unbindAndFinish()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindAndFinish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindAndFinish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f0d0012

    const v2, 0x7f0a00cc

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0d0004

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->showDialog(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "VCardExport"

    const-string v1, "Failed to start vCard service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ExportVCardActivity;->showDialog(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VCardExport"

    const-string v1, "Failed to connect to vCard service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ExportVCardActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    const v6, 0x7f0a00e0

    const v1, 0x7f0a00df

    const/4 v2, 0x1

    const v5, 0x104000a

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a00dd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00de

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;

    iget-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;-><init>(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    iput-boolean v4, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mPath:Ljava/lang/String;

    sget-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a027c

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p0, v6, v2}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0a00e2

    goto :goto_1

    :sswitch_2
    iput-boolean v4, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    :goto_2
    aput-object v0, v2, v4

    invoke-virtual {p0, v6, v2}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f0a00cc

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :sswitch_3
    iput-boolean v4, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mPath:Ljava/lang/String;

    sget-object v2, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a0276

    :goto_3
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mPath:Ljava/lang/String;

    sget-object v2, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a0277

    :goto_4
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f0a00b7

    goto :goto_3

    :cond_3
    const v0, 0x7f0a00b8

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x7f0a00e2 -> :sswitch_1
        0x7f0d0004 -> :sswitch_3
        0x7f0d0010 -> :sswitch_0
        0x7f0d0012 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4

    const v0, 0x7f0d0012

    if-ne p1, v0, :cond_0

    check-cast p2, Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0d0010

    if-ne p1, v0, :cond_1

    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f0a00de

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    check-cast p2, Lcom/android/contacts/vcard/VCardService$MyBinder;

    invoke-virtual {p2}, Lcom/android/contacts/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/vcard/VCardService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/VCardService;->setTargetDirectory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mIncomingMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/VCardService;->handleRequestAvailableExportDestination(Landroid/os/Messenger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    if-eqz v0, :cond_0

    const-string v0, "VCardExport"

    const-string v1, "Disconnected from service during the process ongoing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a00cc

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    const v0, 0x7f0d0012

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->showDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindAndFinish()V

    :cond_0
    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    invoke-super {p0, p1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
