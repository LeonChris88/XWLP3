.class Lcom/android/server/PowerManagerService$15;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Light onSensorChanged : return, isScreenTurningOffLocked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    float-to-int v2, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v5, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSensorChanged: light value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v5

    const/high16 v7, -0x4080

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)J

    move-result-wide v7

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)I

    move-result v5

    int-to-long v9, v5

    add-long/2addr v7, v9

    cmp-long v5, v0, v7

    if-gez v5, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$6002(Lcom/android/server/PowerManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$6102(Lcom/android/server/PowerManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3, v2}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;I)V

    :cond_2
    :goto_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    int-to-float v5, v2

    :try_start_1
    iget-object v7, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_4
    int-to-float v5, v2

    iget-object v7, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_5

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    int-to-float v5, v2

    iget-object v7, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v7

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_a

    :cond_6
    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v5, v2

    iget-object v8, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v8

    cmpg-float v5, v5, v8

    if-gez v5, :cond_8

    move v5, v3

    :goto_2
    invoke-static {v7, v5}, Lcom/android/server/PowerManagerService;->access$6002(Lcom/android/server/PowerManagerService;Z)Z

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v7, v2

    iget-object v8, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    :goto_3
    invoke-static {v5, v3}, Lcom/android/server/PowerManagerService;->access$6102(Lcom/android/server/PowerManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_7
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v4, v2

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$6202(Lcom/android/server/PowerManagerService;F)F

    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v7, 0x7d0

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_8
    move v5, v4

    goto :goto_2

    :cond_9
    move v3, v4

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v4, v2

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$6202(Lcom/android/server/PowerManagerService;F)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
