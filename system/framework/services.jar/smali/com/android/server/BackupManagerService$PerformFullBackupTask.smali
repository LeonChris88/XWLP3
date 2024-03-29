.class Lcom/android/server/BackupManagerService$PerformFullBackupTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullBackupTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    }
.end annotation


# instance fields
.field mAllApps:Z

.field mCurrentPassword:Ljava/lang/String;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mEncryptPassword:Ljava/lang/String;

.field mFilesDir:Ljava/io/File;

.field mIncludeApks:Z

.field mIncludeShared:Z

.field final mIncludeSystem:Z

.field mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mManifestFile:Ljava/io/File;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZLjava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    iput-boolean p4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeApks:Z

    iput-boolean p5, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeShared:Z

    iput-boolean p8, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mAllApps:Z

    iput-boolean p9, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeSystem:Z

    iput-object p10, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mCurrentPassword:Ljava/lang/String;

    if-eqz p7, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p6, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    :goto_0
    iput-object p11, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mFilesDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mFilesDir:Ljava/io/File;

    const-string v2, "_manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mManifestFile:Ljava/io/File;

    return-void

    :cond_1
    iput-object p7, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V

    return-void
.end method

.method private backupOnePackage(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to full backup agent : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v4

    if-eqz v4, :cond_b

    const/4 v14, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeApks:Z

    if-eqz v2, :cond_2

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x2000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    :cond_0
    const/4 v7, 0x1

    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v6

    new-instance v1, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;

    const/4 v2, 0x1

    aget-object v5, v14, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;-><init>(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZ)V

    const/4 v2, 0x1

    aget-object v2, v14, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v14, v2

    new-instance v16, Ljava/lang/Thread;

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v15, Ljava/io/FileInputStream;

    const/4 v2, 0x0

    aget-object v2, v14, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x4000

    new-array v9, v2, [B

    :cond_1
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    if-lez v10, :cond_4

    :goto_1
    if-lez v10, :cond_1

    array-length v2, v9

    if-le v10, v2, :cond_3

    array-length v0, v9

    move/from16 v17, v0

    :goto_2
    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v9, v2, v0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v13

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v2, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    sub-int/2addr v10, v13

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    move/from16 v17, v10

    goto :goto_2

    :catch_0
    move-exception v11

    :try_start_2
    const-string v2, "BackupManagerService"

    const-string v3, "Caught exception reading from agent"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v2, v6}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full backup failed on package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v14, :cond_6

    const/4 v2, 0x0

    aget-object v2, v14, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    aget-object v2, v14, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_5
    const/4 v2, 0x1

    aget-object v2, v14, v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    aget-object v2, v14, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_6
    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    return-void

    :cond_7
    :try_start_4
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full package backup success: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v11

    :try_start_5
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error backing up "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v14, :cond_6

    const/4 v2, 0x0

    aget-object v2, v14, v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    aget-object v2, v14, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_8
    const/4 v2, 0x1

    aget-object v2, v14, v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    aget-object v2, v14, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v11

    const-string v2, "BackupManagerService"

    const-string v3, "Error bringing down backup stack"

    :goto_5
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v2

    :try_start_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v14, :cond_a

    const/4 v3, 0x0

    aget-object v3, v14, v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_9
    const/4 v3, 0x1

    aget-object v3, v14, v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_a
    :goto_6
    throw v2

    :cond_b
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind to full agent for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_3
    move-exception v11

    const-string v3, "BackupManagerService"

    const-string v5, "Error bringing down backup stack"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_4
    move-exception v11

    const-string v2, "BackupManagerService"

    const-string v3, "Error bringing down backup stack"

    goto :goto_5
.end method

.method private backupSharedStorage()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v4}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.android.sharedstoragebackup"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "Shared storage"

    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-wide/32 v5, 0x1b7740

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    iget-object v5, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, v4, v3, v5}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "BackupManagerService"

    const-string v5, "Full backup failed on shared storage"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    return-void

    :cond_0
    :try_start_1
    const-string v4, "BackupManagerService"

    const-string v5, "Full shared storage backup success"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v4, "BackupManagerService"

    const-string v5, "Shared storage backup package not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-direct {p0, v2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    throw v4

    :cond_1
    :try_start_3
    const-string v4, "BackupManagerService"

    const-string v5, "Could not bind to shared storage backup agent"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x200

    invoke-static/range {v17 .. v18}, Lcom/android/server/BackupManagerService;->access$1100(Lcom/android/server/BackupManagerService;I)[B

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2710

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v15, v2}, Lcom/android/server/BackupManagerService;->access$1200(Lcom/android/server/BackupManagerService;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v16

    const/16 v17, 0x20

    move/from16 v0, v17

    new-array v11, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$1300(Lcom/android/server/BackupManagerService;)Ljava/security/SecureRandom;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x200

    invoke-static/range {v17 .. v18}, Lcom/android/server/BackupManagerService;->access$1100(Lcom/android/server/BackupManagerService;I)[B

    move-result-object v7

    const-string v17, "AES/CBC/PKCS5Padding"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string v17, "AES"

    move-object/from16 v0, v17

    invoke-direct {v10, v11, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v9, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v9, v0, v5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const-string v17, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v17, 0x2710

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v17, "AES/CBC/PKCS5Padding"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v13

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v13}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v18

    const/16 v19, 0x2710

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v7, v2}, Lcom/android/server/BackupManagerService;->access$1500(Lcom/android/server/BackupManagerService;[B[BI)[B

    move-result-object v6

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    array-length v0, v3

    move/from16 v17, v0

    array-length v0, v12

    move/from16 v18, v0

    add-int v17, v17, v18

    array-length v0, v6

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v14, v3}, Ljava/io/DataOutputStream;->write([B)V

    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v14, v12}, Ljava/io/DataOutputStream;->write([B)V

    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v14, v6}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v14}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v9
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .locals 4

    const/16 v2, 0x400

    :try_start_0
    new-array v1, v2, [B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "BackupManagerService"

    const-string v3, "Error attempting to finalize backup stream"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tearDown(Landroid/content/pm/PackageInfo;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$700(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$700(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "BackupManagerService"

    const-string v3, "Lost app trying to shut down"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V
    .locals 18

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "a"

    const/4 v3, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v12, v17

    array-length v14, v12

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_0

    aget-object v15, v12, v13

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "obb"

    const/4 v8, 0x0

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v8, 0x1000

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v6, Landroid/util/StringBuilderPrinter;

    invoke-direct {v6, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget v8, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v8}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v6, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string v8, "1"

    :goto_1
    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v8, :cond_3

    const-string v8, "0"

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    return-void

    :cond_1
    const-string v3, ""

    goto :goto_0

    :cond_2
    const-string v8, "0"

    goto :goto_1

    :cond_3
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v7, v0, v2

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 25

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const-string v21, "BackupManagerService"

    const-string v22, "--- Performing full-dataset backup ---"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendStartBackup()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mAllApps:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v21

    const/16 v22, 0x40

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeSystem:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    const/4 v13, 0x0

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_1

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    array-length v15, v4

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_2

    aget-object v20, v4, v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v21

    const/16 v22, 0x40

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v21, "BackupManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown package "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", skipping"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_4

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v21, v0

    const v22, 0x8000

    and-int v21, v21, v22

    if-nez v21, :cond_3

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/16 v17, 0x0

    const/16 v19, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_6

    const/4 v8, 0x1

    :goto_4
    const/4 v5, 0x1

    move-object/from16 v9, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/BackupManagerService;->hasBackupPassword()Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mCurrentPassword:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x2710

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;I)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "BackupManagerService"

    const-string v22, "Backup password mismatch; aborting"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v17, :cond_5

    :try_start_2
    throw v17

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    const-string v21, "BackupManagerService"

    const-string v22, "Full backup pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    :goto_6
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_7
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v21, 0x400

    move/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v21, "ANDROID BACKUP\n"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_8

    const-string v21, "\n1\n"

    :goto_7
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v8, :cond_9

    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v9

    move-object v10, v9

    :goto_8
    :try_start_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz v5, :cond_10

    new-instance v6, Ljava/util/zip/Deflater;

    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/util/zip/Deflater;-><init>(I)V

    new-instance v9, Ljava/util/zip/DeflaterOutputStream;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v9, v10, v6, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_9
    move-object/from16 v17, v9

    :try_start_8
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v3, :cond_b

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->backupOnePackage(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_8
    const-string v21, "\n0\n"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_7

    :cond_9
    :try_start_9
    const-string v21, "none\n"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    move-object v10, v9

    goto :goto_8

    :catch_1
    move-exception v7

    :goto_b
    :try_start_a
    const-string v21, "BackupManagerService"

    const-string v22, "Unable to emit archive header"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v17, :cond_a

    :try_start_b
    throw v17

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    monitor-exit v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v22
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    const-string v21, "BackupManagerService"

    const-string v22, "Full backup pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    goto/16 :goto_6

    :cond_b
    :try_start_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeShared:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->backupSharedStorage()V

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v17, :cond_d

    :try_start_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    monitor-exit v22
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v22
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    const-string v21, "BackupManagerService"

    const-string v22, "Full backup pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    goto/16 :goto_6

    :catch_2
    move-exception v7

    :try_start_12
    const-string v21, "BackupManagerService"

    const-string v22, "App died during full backup"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v17, :cond_e

    :try_start_13
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    monitor-exit v22
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v22
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    const-string v21, "BackupManagerService"

    const-string v22, "Full backup pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    goto/16 :goto_6

    :catchall_0
    move-exception v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v17, :cond_f

    :try_start_16
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->clear()V

    monitor-exit v22
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v22
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    const-string v22, "BackupManagerService"

    const-string v23, "Full backup pass complete."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v21

    :catchall_1
    move-exception v21

    :try_start_19
    monitor-exit v22
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    throw v21

    :catchall_2
    move-exception v21

    :try_start_1a
    monitor-exit v22
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    throw v21

    :catchall_3
    move-exception v21

    :try_start_1b
    monitor-exit v22
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    throw v21

    :catchall_4
    move-exception v21

    :try_start_1c
    monitor-exit v22
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    throw v21

    :catchall_5
    move-exception v21

    :try_start_1d
    monitor-exit v22
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    throw v21

    :catchall_6
    move-exception v21

    :try_start_1e
    monitor-exit v22
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    throw v21

    :catchall_7
    move-exception v21

    :try_start_1f
    monitor-exit v22
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    throw v21

    :catchall_8
    move-exception v21

    :try_start_20
    monitor-exit v22
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    throw v21

    :catchall_9
    move-exception v21

    :try_start_21
    monitor-exit v22
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    throw v21

    :catchall_a
    move-exception v21

    :try_start_22
    monitor-exit v22
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    throw v21

    :catch_3
    move-exception v21

    goto/16 :goto_d

    :catch_4
    move-exception v21

    goto/16 :goto_c

    :catch_5
    move-exception v21

    goto/16 :goto_5

    :catch_6
    move-exception v21

    goto/16 :goto_e

    :catch_7
    move-exception v22

    goto :goto_f

    :catch_8
    move-exception v7

    move-object v9, v10

    goto/16 :goto_b

    :cond_10
    move-object v9, v10

    goto/16 :goto_9
.end method

.method sendEndBackup()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: endBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendOnBackupPackage(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: backupPackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendStartBackup()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: startBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method
