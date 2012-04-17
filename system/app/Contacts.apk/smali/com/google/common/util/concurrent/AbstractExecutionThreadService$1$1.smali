.class Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->startUp()V

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyStarted()V

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->isRunning()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->shutDown()V

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyStopped()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->shutDown()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyFailed(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_2
    move-exception v1

    goto :goto_0
.end method
