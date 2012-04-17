.class public Lcom/google/common/util/concurrent/Futures;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;,
        Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;,
        Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/util/concurrent/ValueFuture;->create()Lcom/google/common/util/concurrent/ValueFuture;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/ValueFuture;->set(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static makeUninterruptible(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/UninterruptibleFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)",
            "Lcom/google/common/util/concurrent/UninterruptibleFuture",
            "<TV;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/common/util/concurrent/UninterruptibleFuture;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/util/concurrent/UninterruptibleFuture;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/Futures$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Futures$1;-><init>(Ljava/util/concurrent/Future;)V

    move-object p0, v0

    goto :goto_0
.end method
