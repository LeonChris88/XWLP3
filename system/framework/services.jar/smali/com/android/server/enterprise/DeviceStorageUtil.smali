.class public Lcom/android/server/enterprise/DeviceStorageUtil;
.super Ljava/lang/Object;
.source "DeviceStorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceStorageUtil"


# instance fields
.field final ERROR:I

.field private final SIZE_INVALID:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->ERROR:I

    iput v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->SIZE_INVALID:I

    iput-object p1, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/DeviceStorageUtil;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/io/File;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/io/File;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private deleteDirRecursive(Ljava/io/File;Ljava/io/FileFilter;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    :cond_0
    const/4 v6, 0x0

    :cond_1
    move v8, v6

    :cond_2
    :goto_0
    return v8

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v3, v0, v4

    if-eqz v6, :cond_4

    invoke-direct {p0, v3, p2}, Lcom/android/server/enterprise/DeviceStorageUtil;->deleteDirRecursive(Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v6, v8

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v6, v9

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_3
    if-eqz v6, :cond_6

    if-nez v7, :cond_2

    :cond_6
    move v8, v9

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    move v8, v6

    goto :goto_0

    :cond_8
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    :goto_4
    if-eqz v6, :cond_9

    if-nez v7, :cond_2

    :cond_9
    move v8, v9

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private doFISNow(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wipe "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/server/enterprise/DeviceShell;->BASH_COMMANDS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/android/server/enterprise/DeviceShell;->setShell(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/enterprise/DeviceShell;->getProcessOutput(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private externalSdCardAvailable()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private getExternalSdCardDirectory()Ljava/io/File;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getExternalSdCardPath()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    array-length v0, v3

    if-le v0, v6, :cond_0

    aget-object v4, v3, v6

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    aget-object v2, v3, v6

    const-string v4, "DeviceStorageUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Subsystem : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "DeviceStorageUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getExternalSdCardState()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getInternalSdCardDirectory()Ljava/io/File;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getInternalSdCardPath()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    array-length v0, v3

    if-lez v0, :cond_1

    aget-object v4, v3, v6

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    aget-object v2, v3, v6

    const-string v4, "DeviceStorageUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Subsystem : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "DeviceStorageUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fuse"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "/"

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getInternalSdCardState()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 4

    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public formatInternalStorage(ZZ)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const-string v5, "all"

    :cond_0
    :goto_0
    if-eqz v5, :cond_8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    const-string v7, "DeviceStorageUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "formatInternalStorage(): Starting Internal Storage wipe for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v6, "all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "/system and /data"

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/DeviceStorageUtil;->doFISNow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v6, "Done wiping"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v2, 0x1

    const-string v7, "DeviceStorageUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "formatInternalStorage(): Done wiping "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v6, "all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "/system and /data"

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_4
    return v2

    :cond_2
    if-eqz p1, :cond_3

    const-string v5, "system"

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_0

    const-string v5, "data"

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    const-string v7, "DeviceStorageUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "formatInternalStorage(): Error in wiping of "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v6, "all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "/system and /data"

    :goto_5
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_7
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    goto :goto_5

    :cond_8
    const-string v6, "DeviceStorageUtil"

    const-string v7, "formatInternalStorage(): Please provide valid input."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 20

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_1

    :cond_0
    const-string v18, "DeviceStorageUtil"

    const-string v19, "formatSelective(): Please provide valid input for fileList."

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    :goto_0
    return-object v18

    :cond_1
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_4

    aget-object v18, p1, v9

    if-eqz v18, :cond_2

    aget-object v18, p1, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    aput-object v18, p1, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    :cond_2
    const-string v18, "DeviceStorageUtil"

    const-string v19, "formatSelective(): Please provide valid input for fileList."

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_5

    const-string v18, "DeviceStorageUtil"

    const-string v19, "formatSelective(): Please provide valid input for filters."

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_8

    aget-object v18, p2, v9

    if-eqz v18, :cond_6

    aget-object v18, p2, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    aput-object v18, p2, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_7

    :cond_6
    const-string v18, "DeviceStorageUtil"

    const-string v19, "formatSelective(): Please provide valid input for filters."

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    goto :goto_0

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v7, p2

    const/4 v15, 0x0

    if-eqz p2, :cond_d

    move-object v2, v7

    array-length v11, v2

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v11, :cond_9

    aget-object v12, v2, v10

    const-string v18, "*.*"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/4 v15, 0x1

    :cond_9
    :goto_4
    move v1, v15

    new-instance v4, Lcom/android/server/enterprise/DeviceStorageUtil$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v1, v7}, Lcom/android/server/enterprise/DeviceStorageUtil$1;-><init>(Lcom/android/server/enterprise/DeviceStorageUtil;Z[Ljava/lang/String;)V

    const-string v18, "DeviceStorageUtil"

    const-string v19, "formatSelective(): Starting..."

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v13, 0x0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    move-object/from16 v2, p1

    :try_start_0
    array-length v11, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v10, 0x0

    move-object v6, v5

    :goto_5
    if-ge v10, v11, :cond_e

    :try_start_1
    aget-object v8, v2, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v13, 0x0

    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/server/enterprise/DeviceStorageUtil;->deleteDirRecursive(Ljava/io/File;Ljava/io/FileFilter;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v13

    :cond_a
    :goto_6
    if-eqz v13, :cond_b

    :try_start_4
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v10, v10, 0x1

    move-object v6, v5

    goto :goto_5

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_d
    const/4 v15, 0x1

    goto :goto_4

    :catch_0
    move-exception v3

    move-object v5, v6

    :goto_7
    const/4 v13, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v3

    :goto_8
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_9
    const-string v18, "DeviceStorageUtil"

    const-string v19, "formatSelective(): Done..."

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_f

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    check-cast v18, [Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v5, v6

    goto :goto_9

    :catchall_0
    move-exception v18

    :goto_a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18

    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v18

    move-object v5, v6

    goto :goto_a

    :catch_2
    move-exception v3

    move-object v5, v6

    goto :goto_8

    :catch_3
    move-exception v3

    goto :goto_7
.end method

.method public formatStorageCard(Z)Z
    .locals 5

    const/4 v2, 0x0

    new-instance v1, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;-><init>(Lcom/android/server/enterprise/DeviceStorageUtil;Z)V

    :try_start_0
    const-string v3, "DeviceStorageUtil"

    const-string v4, "formatStorageCard(): Starting SdCard formatting..."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/enterprise/DeviceStorageUtil$2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil$2;-><init>(Lcom/android/server/enterprise/DeviceStorageUtil;Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)V

    invoke-virtual {v3}, Lcom/android/server/enterprise/DeviceStorageUtil$2;->start()V

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "DeviceStorageUtil"

    const-string v4, "formatStorageCard(): Waiting...to be Done"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean v3, v1, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_0
    :try_start_3
    const-string v3, "DeviceStorageUtil"

    const-string v4, "formatStorageCard(): Waiting over..."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->finished:Z

    if-eqz v3, :cond_1

    iget-boolean v2, v1, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->success:Z

    :cond_1
    monitor-exit v1

    :goto_1
    return v2

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getAvailableExternalMemorySize()J
    .locals 10

    const-wide/16 v7, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->externalSdCardAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-wide v7

    :cond_1
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v0, v7

    mul-long v7, v0, v2

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAvailableExternalMemorySizeFormated()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getAvailableExternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableInternalMemorySize()J
    .locals 12

    const-wide/16 v9, -0x1

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v0, v11

    mul-long v6, v0, v2

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return-wide v9

    :cond_0
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    int-to-long v0, v9

    mul-long v9, v0, v2

    add-long/2addr v6, v9

    move-wide v9, v6

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAvailableInternalMemorySizeFormated()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getAvailableInternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalExternalMemorySize()J
    .locals 10

    const-wide/16 v7, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->externalSdCardAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-wide v7

    :cond_1
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v0, v9

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v5, v7

    mul-long v7, v5, v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getTotalExternalMemorySizeFormated()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getTotalExternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalInternalMemorySize()J
    .locals 12

    const-wide/16 v9, -0x1

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v0, v11

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    int-to-long v7, v11

    mul-long v4, v7, v0

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-wide v9

    :cond_0
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v0, v11

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    int-to-long v7, v9

    mul-long v9, v7, v0

    add-long/2addr v4, v9

    move-wide v9, v4

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getTotalInternalMemorySizeFormated()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getTotalInternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
