.class Lcom/android/server/ShutdownLoggerService$RuntimeExecutor$InterruptScheduler;
.super Ljava/util/TimerTask;
.source "ShutdownLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InterruptScheduler"
.end annotation


# instance fields
.field target:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;


# direct methods
.method public constructor <init>(Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;Ljava/lang/Thread;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/ShutdownLoggerService$RuntimeExecutor$InterruptScheduler;->this$0:Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ShutdownLoggerService$RuntimeExecutor$InterruptScheduler;->target:Ljava/lang/Thread;

    iput-object p2, p0, Lcom/android/server/ShutdownLoggerService$RuntimeExecutor$InterruptScheduler;->target:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ShutdownLoggerService$RuntimeExecutor$InterruptScheduler;->target:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
