.class Lcom/android/server/GateLoggerSettingsService$NativeListener;
.super Ljava/lang/Object;
.source "GateLoggerSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GateLoggerSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeListener"
.end annotation


# instance fields
.field private final SOCKET_NAME_LSRV:Ljava/lang/String;

.field public mSocket:Landroid/net/LocalSocket;

.field final synthetic this$0:Lcom/android/server/GateLoggerSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/GateLoggerSettingsService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/GateLoggerSettingsService$NativeListener;->this$0:Lcom/android/server/GateLoggerSettingsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "gatelsrv"

    iput-object v0, p0, Lcom/android/server/GateLoggerSettingsService$NativeListener;->SOCKET_NAME_LSRV:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GateLoggerSettingsService;Lcom/android/server/GateLoggerSettingsService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/GateLoggerSettingsService$NativeListener;-><init>(Lcom/android/server/GateLoggerSettingsService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    :try_start_0
    new-instance v7, Landroid/net/LocalServerSocket;

    const-string v11, "gatelsrv"

    invoke-direct {v7, v11}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v11, "NativeListener"

    const-string v12, "waiting..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v8, 0x0

    const/4 v1, 0x0

    new-array v0, v1, [B

    move v9, v8

    :goto_1
    const/4 v11, -0x1

    if-eq v5, v11, :cond_1

    mul-int/lit8 v11, v1, 0x3

    div-int/lit8 v11, v11, 0x2

    add-int/lit8 v1, v11, 0x1

    new-array v2, v1, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v0

    invoke-static {v0, v11, v2, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    add-int/lit8 v8, v9, 0x1

    int-to-byte v11, v5

    aput-byte v11, v0, v9

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v5

    move v9, v8

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11, v9}, Ljava/lang/String;-><init>([BII)V

    iget-object v11, p0, Lcom/android/server/GateLoggerSettingsService$NativeListener;->this$0:Lcom/android/server/GateLoggerSettingsService;

    invoke-virtual {v11, v10}, Lcom/android/server/GateLoggerSettingsService;->processCmd(Ljava/lang/String;)V

    const-string v11, "NativeListener"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "receive "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v14, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
