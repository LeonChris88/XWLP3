.class Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;
.super Landroid/telephony/PhoneStateListener;
.source "AirplaneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AirplaneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->access$002(Lcom/android/systemui/statusbar/policy/AirplaneModeController;Z)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->access$100(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)Landroid/widget/CompoundButton;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->access$100(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)Landroid/widget/CompoundButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->access$200(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->access$200(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-result-object v2

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_1
.end method
