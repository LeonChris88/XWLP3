.class public abstract Lcom/google/common/util/concurrent/AbstractFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractFuture$Sync;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/AbstractFuture$Sync",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    return-void
.end method


# virtual methods
.method protected final cancel()Z
    .locals 2

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->cancel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->done()V

    :cond_0
    return v0
.end method

.method public cancel(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected done()V
    .locals 0

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->get(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->isDone()Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v1, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->set(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->done()V

    :cond_0
    return v0
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .locals 2

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v1, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->done()V

    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_1
    return v0
.end method
