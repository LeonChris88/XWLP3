.class Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;
.super Ljava/lang/Object;
.source "ShutdownLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ShutdownLoggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RuntimeExecutor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ShutdownLoggerService$RuntimeExecutor$InterruptScheduler;
    }
.end annotation


# instance fields
.field private timeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;->timeout:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;->timeout:J

    iput-wide p1, p0, Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;->timeout:J

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/sh"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "-c"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    aput-object p1, v2, v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lcom/android/server/ShutdownLoggerService$RuntimeExecutor$InterruptScheduler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/ShutdownLoggerService$RuntimeExecutor$InterruptScheduler;-><init>(Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;Ljava/lang/Thread;)V

    iget-wide v5, p0, Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;->timeout:J

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    const-string v4, "ShutdownLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Process Destroy, TIMEOUT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;->timeout:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " milliseconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    throw v4
.end method
