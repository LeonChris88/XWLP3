.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "KeyguardUpdateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "received broadcast "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "android.intent.action.TIME_TICK"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12d

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v8, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v9, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1102(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v9, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1302(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12f

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "status"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "plugged"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v8, "level"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v8, "health"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12e

    new-instance v10, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct {v10, v7, v3, v5, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x130

    invoke-static {p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    const-string v8, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x131

    const-string v11, "android.media.EXTRA_RINGER_MODE"

    const/4 v12, -0x1

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_6
    const-string v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "state"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x132

    invoke-virtual {v9, v10, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_7
    const-string v8, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x135

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_8
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x136

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_9
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v8, "KeyguardUpdateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received  ACTION_AIRPLANE_MODE_CHANGED = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x137

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v1, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
