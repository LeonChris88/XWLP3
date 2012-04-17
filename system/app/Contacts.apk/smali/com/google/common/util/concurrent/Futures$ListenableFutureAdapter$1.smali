.class Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;->this$0:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;->this$0:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->access$100(Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;->this$0:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->access$200(Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;)Lcom/google/common/util/concurrent/ExecutionList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/ExecutionList;->run()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter thread interrupted!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method
