.class Lcom/android/systemui/statusbar/policy/SyncController$1;
.super Landroid/content/BroadcastReceiver;
.source "SyncController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SyncController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SyncController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SyncController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SyncController$1;->this$0:Lcom/android/systemui/statusbar/policy/SyncController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SyncController$1;->this$0:Lcom/android/systemui/statusbar/policy/SyncController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SyncController;->access$000(Lcom/android/systemui/statusbar/policy/SyncController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SyncController$1;->this$0:Lcom/android/systemui/statusbar/policy/SyncController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SyncController;->access$000(Lcom/android/systemui/statusbar/policy/SyncController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method
