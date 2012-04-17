.class public Lcom/android/server/ShutdownLoggerService;
.super Landroid/app/IShutdownLogger$Stub;
.source "ShutdownLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;
    }
.end annotation


# static fields
.field private static final MAX_LOG_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ShutdownLogger"

.field private static final autoTestFile:Ljava/lang/String; = "/mnt/.lfs/debug_level.inf"

.field private static final shutdownCallStack:Ljava/lang/String; = "/data/log/dumpstate_shutdown.txt"

.field private static final shutdownTimeLogFile:Ljava/lang/String; = "/data/log/off.p"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/IShutdownLogger$Stub;-><init>()V

    return-void
.end method

.method public static __recordShutdownTime()V
    .locals 19

    new-instance v14, Ljava/io/File;

    const-string v17, "/data/log/off.p"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/16 v17, 0x14

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    const/4 v10, 0x0

    :goto_0
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v10, v0, :cond_0

    const/16 v17, 0x0

    aput-object v17, v15, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_5

    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    const-string v17, "/data/log/off.p"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v13, Ljava/io/LineNumberReader;

    invoke-direct {v13, v7}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    :try_start_2
    const-string v11, ""

    :goto_1
    invoke-virtual {v13}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    const-string v17, "END"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    move v4, v3

    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v3

    add-int/lit8 v17, v3, 0x1

    rem-int/lit8 v3, v17, 0x14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    goto :goto_1

    :cond_2
    if-eqz v13, :cond_3

    :try_start_3
    invoke-virtual {v13}, Ljava/io/LineNumberReader;->close()V

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    :cond_4
    :goto_2
    move-object v12, v13

    move-object v6, v7

    :cond_5
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_6

    move v4, v3

    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/ShutdownLoggerService;->getCurrentTime()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v4

    add-int/lit8 v17, v4, 0x1

    rem-int/lit8 v4, v17, 0x14

    const-string v17, "END\n"

    aput-object v17, v15, v4

    const/4 v1, 0x0

    const/4 v8, 0x0

    :try_start_4
    new-instance v9, Ljava/io/FileWriter;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v9, v14, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    const/4 v10, 0x0

    :goto_4
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v10, v0, :cond_b

    :try_start_6
    aget-object v17, v15, v10

    if-eqz v17, :cond_7

    aget-object v17, v15, v10

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :catch_0
    move-exception v5

    :goto_5
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v12, :cond_8

    :try_start_8
    invoke-virtual {v12}, Ljava/io/LineNumberReader;->close()V

    :cond_8
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v17

    :goto_6
    if-eqz v12, :cond_9

    :try_start_9
    invoke-virtual {v12}, Ljava/io/LineNumberReader;->close()V

    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_a
    :goto_7
    throw v17

    :cond_b
    if-eqz v2, :cond_c

    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_d
    :goto_8
    move-object v8, v9

    move-object v1, v2

    :cond_e
    :goto_9
    new-instance v16, Ljava/lang/Thread;

    new-instance v17, Lcom/android/server/ShutdownLoggerService$1;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/ShutdownLoggerService$1;-><init>()V

    invoke-direct/range {v16 .. v17}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    return-void

    :catch_2
    move-exception v5

    :goto_a
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v1, :cond_f

    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_f
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_9

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catchall_1
    move-exception v17

    :goto_b
    if-eqz v1, :cond_10

    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_10
    if-eqz v8, :cond_11

    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    :cond_11
    :goto_c
    throw v17

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    :catch_6
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catch_7
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catchall_2
    move-exception v17

    move-object v8, v9

    goto :goto_b

    :catchall_3
    move-exception v17

    move-object v8, v9

    move-object v1, v2

    goto :goto_b

    :catch_8
    move-exception v5

    move-object v8, v9

    goto :goto_a

    :catch_9
    move-exception v5

    move-object v8, v9

    move-object v1, v2

    goto :goto_a

    :catchall_4
    move-exception v17

    move-object v6, v7

    goto :goto_6

    :catchall_5
    move-exception v17

    move-object v12, v13

    move-object v6, v7

    goto :goto_6

    :catch_a
    move-exception v5

    move-object v6, v7

    goto/16 :goto_5

    :catch_b
    move-exception v5

    move-object v12, v13

    move-object v6, v7

    goto/16 :goto_5
.end method

.method public static appendLogByHandler(Ljava/lang/String;)V
    .locals 19

    new-instance v15, Ljava/io/File;

    const-string v17, "/data/log/dumpstate_shutdown.txt"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v17, 0x14

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v11, 0x0

    :goto_0
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v11, v0, :cond_0

    const/16 v17, 0x0

    aput-object v17, v16, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_4

    const/4 v7, 0x0

    const/4 v13, 0x0

    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v14, Ljava/io/LineNumberReader;

    invoke-direct {v14, v8}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1a

    :try_start_2
    const-string v12, ""

    :goto_1
    invoke-virtual {v14}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_20

    const-string v17, "END"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    move v5, v4

    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v4

    add-int/lit8 v17, v4, 0x1

    rem-int/lit8 v4, v17, 0x14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1b

    goto :goto_1

    :catch_0
    move-exception v6

    :goto_2
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v13, :cond_2

    :try_start_4
    invoke-virtual {v13}, Ljava/io/LineNumberReader;->close()V

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    :cond_3
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_19

    :cond_4
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_5

    move v5, v4

    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/ShutdownLoggerService;->getCurrentTime()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ==> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v5

    add-int/lit8 v17, v5, 0x1

    rem-int/lit8 v5, v17, 0x14

    const-string v17, "END\n"

    aput-object v17, v16, v5

    :try_start_5
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "ShutdownLogger"

    const-string v18, "Errors in creating logFile"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "ShutdownLogger"

    const-string v18, "Errors in setReadable"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_7
    const/4 v2, 0x0

    const/4 v9, 0x0

    :try_start_6
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    :try_start_7
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12

    const/4 v11, 0x0

    :goto_4
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v11, v0, :cond_1e

    :try_start_8
    aget-object v17, v16, v11

    if-eqz v17, :cond_8

    aget-object v17, v16, v11

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_13

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :catchall_0
    move-exception v17

    :goto_5
    if-eqz v13, :cond_9

    :try_start_9
    invoke-virtual {v13}, Ljava/io/LineNumberReader;->close()V

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    :cond_a
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :goto_6
    throw v17

    :catch_1
    move-exception v6

    :try_start_a
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v2, 0x0

    const/4 v9, 0x0

    :try_start_b
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :try_start_c
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_15

    const/4 v11, 0x0

    :goto_7
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v11, v0, :cond_18

    :try_start_d
    aget-object v17, v16, v11

    if-eqz v17, :cond_b

    aget-object v17, v16, v11

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_16

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :catch_2
    move-exception v6

    :goto_8
    :try_start_e
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v2, :cond_c

    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    :cond_d
    :goto_9
    throw v17

    :catch_3
    move-exception v6

    :goto_a
    :try_start_10
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v2, :cond_e

    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :cond_e
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_14

    :cond_f
    :goto_b
    return-void

    :catch_4
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v6

    :goto_c
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catchall_1
    move-exception v17

    const/4 v2, 0x0

    const/4 v9, 0x0

    :try_start_12
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    :try_start_13
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_17

    const/4 v11, 0x0

    :goto_d
    const/16 v18, 0x14

    move/from16 v0, v18

    if-ge v11, v0, :cond_13

    :try_start_14
    aget-object v18, v16, v11

    if-eqz v18, :cond_10

    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_18

    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :catch_6
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catchall_2
    move-exception v17

    :goto_e
    if-eqz v2, :cond_11

    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :cond_11
    if-eqz v9, :cond_12

    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    :cond_12
    :goto_f
    throw v17

    :catch_7
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :cond_13
    if-eqz v3, :cond_14

    :try_start_16
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_14
    if-eqz v10, :cond_15

    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    :cond_15
    :goto_10
    move-object v9, v10

    move-object v2, v3

    goto :goto_9

    :catch_8
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    :catch_9
    move-exception v6

    :goto_11
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    :catchall_3
    move-exception v17

    :goto_12
    if-eqz v2, :cond_16

    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :cond_16
    if-eqz v9, :cond_17

    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    :cond_17
    :goto_13
    throw v17

    :catch_a
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    :cond_18
    if-eqz v3, :cond_19

    :try_start_18
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_19
    if-eqz v10, :cond_1a

    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b

    :cond_1a
    :goto_14
    move-object v9, v10

    move-object v2, v3

    goto :goto_b

    :catch_b
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    :catch_c
    move-exception v6

    :goto_15
    :try_start_19
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    if-eqz v2, :cond_1b

    :try_start_1a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9

    :cond_1b
    if-eqz v9, :cond_f

    :try_start_1b
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    goto/16 :goto_b

    :catch_d
    move-exception v6

    goto :goto_11

    :catchall_4
    move-exception v17

    :goto_16
    if-eqz v2, :cond_1c

    :try_start_1c
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :cond_1c
    if-eqz v9, :cond_1d

    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_e

    :cond_1d
    :goto_17
    throw v17

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    :cond_1e
    if-eqz v3, :cond_1f

    :try_start_1d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_1f
    if-eqz v10, :cond_1a

    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f

    goto :goto_14

    :catch_f
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    :cond_20
    if-eqz v14, :cond_21

    :try_start_1e
    invoke-virtual {v14}, Ljava/io/LineNumberReader;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_5

    :cond_21
    if-eqz v8, :cond_22

    :try_start_1f
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_11

    :cond_22
    :try_start_20
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_10

    goto/16 :goto_3

    :catch_10
    move-exception v6

    goto/16 :goto_c

    :catch_11
    move-exception v6

    goto/16 :goto_c

    :catchall_5
    move-exception v17

    move-object v9, v10

    goto :goto_16

    :catchall_6
    move-exception v17

    move-object v9, v10

    move-object v2, v3

    goto :goto_16

    :catch_12
    move-exception v6

    move-object v9, v10

    goto :goto_15

    :catch_13
    move-exception v6

    move-object v9, v10

    move-object v2, v3

    goto :goto_15

    :catchall_7
    move-exception v17

    move-object v9, v10

    goto :goto_12

    :catchall_8
    move-exception v17

    move-object v9, v10

    move-object v2, v3

    goto :goto_12

    :catch_14
    move-exception v6

    goto/16 :goto_11

    :catch_15
    move-exception v6

    move-object v9, v10

    goto/16 :goto_a

    :catch_16
    move-exception v6

    move-object v9, v10

    move-object v2, v3

    goto/16 :goto_a

    :catchall_9
    move-exception v17

    move-object v9, v10

    goto/16 :goto_e

    :catchall_a
    move-exception v17

    move-object v9, v10

    move-object v2, v3

    goto/16 :goto_e

    :catch_17
    move-exception v6

    move-object v9, v10

    goto/16 :goto_8

    :catch_18
    move-exception v6

    move-object v9, v10

    move-object v2, v3

    goto/16 :goto_8

    :catch_19
    move-exception v6

    goto/16 :goto_c

    :catchall_b
    move-exception v17

    move-object v7, v8

    goto/16 :goto_5

    :catchall_c
    move-exception v17

    move-object v13, v14

    move-object v7, v8

    goto/16 :goto_5

    :catch_1a
    move-exception v6

    move-object v7, v8

    goto/16 :goto_2

    :catch_1b
    move-exception v6

    move-object v13, v14

    move-object v7, v8

    goto/16 :goto_2
.end method

.method private static getCurrentTime()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getFileName()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "ShutdownCallStack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    const-string v3, "PM"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const-string v3, "AM"

    goto :goto_0
.end method

.method private static isDoingAutoTest()Z
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v6, "/mnt/.lfs/debug_level.inf"

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DAUT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_0
    move-object v0, v1

    :goto_1
    return v6

    :cond_2
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_2
    move-object v0, v1

    move-object v3, v4

    :cond_5
    :goto_3
    const/4 v6, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_6

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_6
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v0, :cond_7

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_8
    :goto_6
    throw v6

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_5

    :catchall_2
    move-exception v6

    move-object v0, v1

    move-object v3, v4

    goto :goto_5

    :catch_5
    move-exception v2

    move-object v3, v4

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v0, v1

    move-object v3, v4

    goto :goto_4
.end method


# virtual methods
.method public appendLog(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/ShutdownLoggerService;->appendLogByHandler(Ljava/lang/String;)V

    return-void
.end method

.method public recordShutdownTime()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
