.class Lcom/android/settings/vpn2/VpnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v3}, Lcom/android/settings/vpn2/VpnSettings;->access$000(Lcom/android/settings/vpn2/VpnSettings;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "add_network"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/settings/vpn2/VpnSettings;->access$002(Lcom/android/settings/vpn2/VpnSettings;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnSettings;->onResume()V

    :cond_0
    return-void
.end method
