.class Lcom/android/server/pm/PackageManagerService$1$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService$1;

.field final synthetic val$dir:Ljava/io/File;

.field final synthetic val$files:[Ljava/lang/String;

.field final synthetic val$nSeparateProcessesInner:[Ljava/lang/String;

.field final synthetic val$parseFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$1;[Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$1$1;->this$0:Lcom/android/server/pm/PackageManagerService$1;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$files:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$dir:Ljava/io/File;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$nSeparateProcessesInner:[Ljava/lang/String;

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$parseFlags:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    sget v6, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$files:[Ljava/lang/String;

    array-length v6, v6

    div-int/lit8 v6, v6, 0x2

    if-ge v2, v6, :cond_4

    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$dir:Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$files:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$files:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$200(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$files:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v7, "PhoneSetupWizard.apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$files:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v7, "SetupWizard.apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Landroid/content/pm/PackageParser;

    invoke-direct {v4, v5}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$nSeparateProcessesInner:[Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$parseFlags:I

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    sget-object v6, Lcom/android/server/pm/PackageManagerService;->pom:Lcom/android/server/pm/PackageManagerService$PackageObjectMap;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$PackageObjectMap;->map:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/pm/PackageManagerService;->isError:Z

    const-string v6, "BootTime"

    const-string v7, "Exception in Thread"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$files:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v7, "MinimalHome.apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_4
    sget v6, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
