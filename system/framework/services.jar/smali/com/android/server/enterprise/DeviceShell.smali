.class Lcom/android/server/enterprise/DeviceShell;
.super Ljava/lang/Object;
.source "DeviceShell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/DeviceShell$1;,
        Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;,
        Lcom/android/server/enterprise/DeviceShell$OUTPUT;
    }
.end annotation


# static fields
.field public static final BASH_COMMANDS:[Ljava/lang/String; = null

.field private static final EXIT:Ljava/lang/String; = "exit\n"

.field private static final SU_COMMANDS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DeviceShell"

.field private static final TEST_COMMANDS:[Ljava/lang/String;

.field private static final UID_PATTERN:Ljava/util/regex/Pattern;

.field private static shell:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "^uid=(\\d+).*?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/DeviceShell;->UID_PATTERN:Ljava/util/regex/Pattern;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/system/bin/su"

    aput-object v1, v0, v2

    const-string v1, "/system/xbin/su"

    aput-object v1, v0, v3

    const-string v1, "su"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/enterprise/DeviceShell;->SU_COMMANDS:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "/system/bin/sh"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/enterprise/DeviceShell;->BASH_COMMANDS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/system/bin/id"

    aput-object v1, v0, v2

    const-string v1, "/system/xbin/id"

    aput-object v1, v0, v3

    const-string v1, "id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/enterprise/DeviceShell;->TEST_COMMANDS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _runCommand(Ljava/lang/String;Lcom/android/server/enterprise/DeviceShell$OUTPUT;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    sget-object v8, Lcom/android/server/enterprise/DeviceShell;->shell:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v5, p1}, Lcom/android/server/enterprise/DeviceShell;->sinkProcessOutput(Ljava/lang/Process;Lcom/android/server/enterprise/DeviceShell$OUTPUT;)Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    const-string v7, "exit\n"

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->getOutput()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v4

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v7, "DeviceShell"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runCommand error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    :goto_4
    throw v7

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v7

    move-object v2, v3

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method private static checkSu()Z
    .locals 5

    sget-object v0, Lcom/android/server/enterprise/DeviceShell;->SU_COMMANDS:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    sput-object v1, Lcom/android/server/enterprise/DeviceShell;->shell:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/DeviceShell;->isRootUid()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    sput-object v4, Lcom/android/server/enterprise/DeviceShell;->shell:Ljava/lang/String;

    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getProcessOutput(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/DeviceShell$OUTPUT;->STDERR:Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    invoke-static {p0, v1}, Lcom/android/server/enterprise/DeviceShell;->_runCommand(Ljava/lang/String;Lcom/android/server/enterprise/DeviceShell$OUTPUT;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isRootUid()Z
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/DeviceShell;->TEST_COMMANDS:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/android/server/enterprise/DeviceShell;->getProcessOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    :cond_1
    move v7, v8

    :cond_2
    :goto_1
    return v7

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sget-object v9, Lcom/android/server/enterprise/DeviceShell;->UID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "0"

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_2

    :cond_5
    :goto_2
    move v7, v8

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static declared-synchronized isSuAvailable()Z
    .locals 2

    const-class v1, Lcom/android/server/enterprise/DeviceShell;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/DeviceShell;->shell:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/DeviceShell;->checkSu()Z

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/DeviceShell;->shell:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static runCommand(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/DeviceShell$OUTPUT;->BOTH:Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    invoke-static {p0, v1}, Lcom/android/server/enterprise/DeviceShell;->_runCommand(Ljava/lang/String;Lcom/android/server/enterprise/DeviceShell$OUTPUT;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static runCommandWithLog(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/DeviceShell$OUTPUT;->STDERR:Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    invoke-static {p0, v1}, Lcom/android/server/enterprise/DeviceShell;->_runCommand(Ljava/lang/String;Lcom/android/server/enterprise/DeviceShell$OUTPUT;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized setShell(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/android/server/enterprise/DeviceShell;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/server/enterprise/DeviceShell;->shell:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static sinkProcessOutput(Ljava/lang/Process;Lcom/android/server/enterprise/DeviceShell$OUTPUT;)Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/DeviceShell$1;->$SwitchMap$com$android$server$enterprise$DeviceShell$OUTPUT:[I

    invoke-virtual {p1}, Lcom/android/server/enterprise/DeviceShell$OUTPUT;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v2, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    goto :goto_0

    :pswitch_1
    :try_start_2
    new-instance v2, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v3, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    goto :goto_0

    :pswitch_2
    :try_start_4
    new-instance v3, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V

    new-instance v3, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
