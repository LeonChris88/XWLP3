.class Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMCardBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;Lcom/android/server/enterprise/MiscPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;-><init>(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v3}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->access$100(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " action is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v3}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->access$100(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " state Extra is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard$State;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v3}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->access$100(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " SIM Card State :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v3}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->access$200(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v3}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->access$100(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " SIMCARD REMOVED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->access$300(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard$State;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v3}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->access$100(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " SIM Card State :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "LOADED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "LOADED"

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v3}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->access$100(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " SIM Card State :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v3}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->access$400(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v3}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->access$100(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "  NEW SIM INSERTED in Device !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->access$300(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v3}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->access$500(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v3}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->access$100(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "   SIM CARD is CHANGED  !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->access$300(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;I)V

    goto/16 :goto_0

    :cond_4
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard$State;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    invoke-static {v3}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;->access$100(Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " SIM Card State :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
