.class Lcom/android/settings/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "level"

    invoke-virtual {p2, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v10, "plugged"

    invoke-virtual {p2, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v10, "invalid_charger"

    invoke-virtual {p2, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v10, 0x50

    if-lt v3, v10, :cond_2

    move v4, v8

    :goto_0
    if-eq v5, v8, :cond_0

    const/4 v10, 0x2

    if-ne v5, v10, :cond_3

    :cond_0
    if-nez v2, :cond_3

    move v6, v8

    :goto_1
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$000(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v10

    if-eqz v4, :cond_4

    if-eqz v6, :cond_4

    :goto_2
    invoke-virtual {v10, v8}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v8}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v10

    if-eqz v6, :cond_5

    move v8, v9

    :goto_3
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v8}, Lcom/android/settings/CryptKeeperSettings;->access$200(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v10

    if-eqz v4, :cond_6

    move v8, v9

    :goto_4
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v8}, Lcom/android/settings/CryptKeeperSettings;->access$300(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v8}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v10, "device_policy"

    invoke-virtual {v8, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->satisfyFIPSPassword()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v7, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v7}, Lcom/android/settings/CryptKeeperSettings;->access$300(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_5
    return-void

    :cond_2
    move v4, v7

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_1

    :cond_4
    move v8, v7

    goto :goto_2

    :cond_5
    move v8, v7

    goto :goto_3

    :cond_6
    move v8, v7

    goto :goto_4

    :cond_7
    iget-object v8, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v8}, Lcom/android/settings/CryptKeeperSettings;->access$000(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_5
.end method
