.class public Lcom/google/common/util/concurrent/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sameThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    new-instance v0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;-><init>(Lcom/google/common/util/concurrent/Executors$1;)V

    return-object v0
.end method
