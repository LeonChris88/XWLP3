.class Lcom/android/server/ThermistorObserver$3;
.super Landroid/content/BroadcastReceiver;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermistorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermistorObserver;


# direct methods
.method constructor <init>(Lcom/android/server/ThermistorObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-static {v2}, Lcom/android/server/ThermistorObserver;->access$800(Lcom/android/server/ThermistorObserver;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "temperature"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v0, 0x1a4

    iget-object v2, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-static {v2}, Lcom/android/server/ThermistorObserver;->access$900(Lcom/android/server/ThermistorObserver;)Z

    move-result v2

    if-nez v2, :cond_2

    if-le v1, v0, :cond_0

    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBatteryBRForAMOLED : onReceive() : limit brightness : true : newTemperature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/ThermistorObserver;->access$1000(Lcom/android/server/ThermistorObserver;Z)V

    iget-object v2, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-static {v2}, Lcom/android/server/ThermistorObserver;->access$1200(Lcom/android/server/ThermistorObserver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$1100(Lcom/android/server/ThermistorObserver;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-gt v1, v0, :cond_0

    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBatteryBRForAMOLED : onReceive() : limit brightness : false : newTemperature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-static {v2, v5}, Lcom/android/server/ThermistorObserver;->access$1000(Lcom/android/server/ThermistorObserver;Z)V

    iget-object v2, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-static {v2}, Lcom/android/server/ThermistorObserver;->access$1200(Lcom/android/server/ThermistorObserver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$1300(Lcom/android/server/ThermistorObserver;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
