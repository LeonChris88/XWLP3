.class Lcom/google/common/util/concurrent/AbstractService$Transition;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<",
        "Lcom/google/common/base/Service$State;",
        ">;"
    }
.end annotation


# instance fields
.field private final done:Ljava/util/concurrent/CountDownLatch;

.field private failureCause:Ljava/lang/Throwable;

.field private result:Lcom/google/common/base/Service$State;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->done:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService$Transition;-><init>()V

    return-void
.end method

.method private getImmediately()Lcom/google/common/base/Service$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->result:Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->FAILED:Lcom/google/common/base/Service$State;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->failureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->result:Lcom/google/common/base/Service$State;

    return-object v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get()Lcom/google/common/base/Service$State;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService$Transition;->getImmediately()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/base/Service$State;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService$Transition;->getImmediately()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService$Transition;->get()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractService$Transition;->get(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method transitionFailed(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->result:Lcom/google/common/base/Service$State;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    sget-object v0, Lcom/google/common/base/Service$State;->FAILED:Lcom/google/common/base/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->result:Lcom/google/common/base/Service$State;

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->failureCause:Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method transitionSucceeded(Lcom/google/common/base/Service$State;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->result:Lcom/google/common/base/Service$State;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->result:Lcom/google/common/base/Service$State;

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
