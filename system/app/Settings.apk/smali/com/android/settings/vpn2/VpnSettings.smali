.class public Lcom/android/settings/vpn2/VpnSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    }
.end annotation


# instance fields
.field filter:Landroid/content/IntentFilter;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mDialog:Lcom/android/settings/vpn2/VpnDialog;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/vpn2/VpnSettings$VpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedKey:Ljava/lang/String;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z

.field private mUpdater:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->filter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnSettings$1;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn2/VpnSettings;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/vpn2/VpnSettings;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    return-object p1
.end method

.method private connect(Lcom/android/settings/vpn2/VpnProfile;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->getDefaultNetwork()[Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    aget-object v3, v5, v10

    const/4 v10, 0x1

    aget-object v2, v5, v10

    const-string v6, ""

    const-string v8, ""

    const-string v0, ""

    iget-object v10, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRPKEY_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v9

    if-nez v9, :cond_3

    const/4 v6, 0x0

    :goto_0
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v9

    if-nez v9, :cond_4

    const/4 v8, 0x0

    :cond_0
    :goto_1
    iget-object v10, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v0, 0x0

    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    if-eqz v8, :cond_2

    if-nez v0, :cond_6

    :cond_2
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Cannot load credentials"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_3
    new-instance v6, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_4
    new-instance v8, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    iget v10, p1, Lcom/android/settings/vpn2/VpnProfile;->type:I

    packed-switch v10, :pswitch_data_0

    :goto_3
    const/4 v4, 0x0

    iget v10, p1, Lcom/android/settings/vpn2/VpnProfile;->type:I

    packed-switch v10, :pswitch_data_1

    :goto_4
    new-instance v1, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v1}, Lcom/android/internal/net/VpnConfig;-><init>()V

    iget-object v10, p1, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/settings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p1, Lcom/android/settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v11, " +"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    :cond_7
    iget-object v10, p1, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p1, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v11, " +"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    :cond_8
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v10, v1, v7, v4}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :pswitch_0
    const/4 v10, 0x6

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v7, v10

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string v11, "udppsk"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x4

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x5

    const-string v11, "1701"

    aput-object v11, v7, v10

    goto :goto_3

    :pswitch_1
    const/4 v10, 0x7

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v7, v10

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string v11, "udprsa"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    aput-object v6, v7, v10

    const/4 v10, 0x4

    aput-object v8, v7, v10

    const/4 v10, 0x5

    aput-object v0, v7, v10

    const/4 v10, 0x6

    const-string v11, "1701"

    aput-object v11, v7, v10

    goto/16 :goto_3

    :pswitch_2
    const/16 v10, 0x9

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v7, v10

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string v11, "xauthpsk"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x4

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x5

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x6

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x7

    const-string v11, ""

    aput-object v11, v7, v10

    const/16 v10, 0x8

    aput-object v2, v7, v10

    goto/16 :goto_3

    :pswitch_3
    const/16 v10, 0xa

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v7, v10

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string v11, "xauthrsa"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    aput-object v6, v7, v10

    const/4 v10, 0x4

    aput-object v8, v7, v10

    const/4 v10, 0x5

    aput-object v0, v7, v10

    const/4 v10, 0x6

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x7

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v11, v7, v10

    const/16 v10, 0x8

    const-string v11, ""

    aput-object v11, v7, v10

    const/16 v10, 0x9

    aput-object v2, v7, v10

    goto/16 :goto_3

    :pswitch_4
    const/16 v10, 0x8

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v7, v10

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string v11, "hybridrsa"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    aput-object v0, v7, v10

    const/4 v10, 0x4

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x5

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x6

    const-string v11, ""

    aput-object v11, v7, v10

    const/4 v10, 0x7

    aput-object v2, v7, v10

    goto/16 :goto_3

    :pswitch_5
    const/16 v10, 0x14

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x1

    const-string v11, "pptp"

    aput-object v11, v4, v10

    const/4 v10, 0x2

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x3

    const-string v11, "1723"

    aput-object v11, v4, v10

    const/4 v10, 0x4

    const-string v11, "name"

    aput-object v11, v4, v10

    const/4 v10, 0x5

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x6

    const-string v11, "password"

    aput-object v11, v4, v10

    const/4 v10, 0x7

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v11, v4, v10

    const/16 v10, 0x8

    const-string v11, "linkname"

    aput-object v11, v4, v10

    const/16 v10, 0x9

    const-string v11, "vpn"

    aput-object v11, v4, v10

    const/16 v10, 0xa

    const-string v11, "refuse-eap"

    aput-object v11, v4, v10

    const/16 v10, 0xb

    const-string v11, "nodefaultroute"

    aput-object v11, v4, v10

    const/16 v10, 0xc

    const-string v11, "usepeerdns"

    aput-object v11, v4, v10

    const/16 v10, 0xd

    const-string v11, "idle"

    aput-object v11, v4, v10

    const/16 v10, 0xe

    const-string v11, "1800"

    aput-object v11, v4, v10

    const/16 v10, 0xf

    const-string v11, "mtu"

    aput-object v11, v4, v10

    const/16 v10, 0x10

    const-string v11, "1400"

    aput-object v11, v4, v10

    const/16 v10, 0x11

    const-string v11, "mru"

    aput-object v11, v4, v10

    const/16 v10, 0x12

    const-string v11, "1400"

    aput-object v11, v4, v10

    const/16 v11, 0x13

    iget-boolean v10, p1, Lcom/android/settings/vpn2/VpnProfile;->mppe:Z

    if-eqz v10, :cond_9

    const-string v10, "+mppe"

    :goto_5
    aput-object v10, v4, v11

    goto/16 :goto_4

    :cond_9
    const-string v10, "nomppe"

    goto :goto_5

    :pswitch_6
    const/16 v10, 0x14

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x1

    const-string v11, "l2tp"

    aput-object v11, v4, v10

    const/4 v10, 0x2

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x3

    const-string v11, "1701"

    aput-object v11, v4, v10

    const/4 v10, 0x4

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x5

    const-string v11, "name"

    aput-object v11, v4, v10

    const/4 v10, 0x6

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x7

    const-string v11, "password"

    aput-object v11, v4, v10

    const/16 v10, 0x8

    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v11, v4, v10

    const/16 v10, 0x9

    const-string v11, "linkname"

    aput-object v11, v4, v10

    const/16 v10, 0xa

    const-string v11, "vpn"

    aput-object v11, v4, v10

    const/16 v10, 0xb

    const-string v11, "refuse-eap"

    aput-object v11, v4, v10

    const/16 v10, 0xc

    const-string v11, "nodefaultroute"

    aput-object v11, v4, v10

    const/16 v10, 0xd

    const-string v11, "usepeerdns"

    aput-object v11, v4, v10

    const/16 v10, 0xe

    const-string v11, "idle"

    aput-object v11, v4, v10

    const/16 v10, 0xf

    const-string v11, "1800"

    aput-object v11, v4, v10

    const/16 v10, 0x10

    const-string v11, "mtu"

    aput-object v11, v4, v10

    const/16 v10, 0x11

    const-string v11, "1400"

    aput-object v11, v4, v10

    const/16 v10, 0x12

    const-string v11, "mru"

    aput-object v11, v4, v10

    const/16 v10, 0x13

    const-string v11, "1400"

    aput-object v11, v4, v10

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    const-string v1, "[Legacy VPN]"

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getDefaultNetwork()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Network is not available"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot get the default interface"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    invoke-virtual {v4}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot get the default gateway"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    return-object v5
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update(I)V

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v1, :cond_2

    iget v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update(I)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v4}, Lcom/android/settings/vpn2/VpnDialog;->getProfile()Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v3

    const-string v4, "enterprise_policy"

    invoke-virtual {p0, v4}, Lcom/android/settings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getVpnPolicy()Landroid/app/enterprise/VpnPolicy;

    move-result-object v4

    iget-object v5, v3, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/enterprise/VpnPolicy;->isAdminProfile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnProfile;->encode()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    :cond_0
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_2

    iget-object v4, v3, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update(Lcom/android/settings/vpn2/VpnProfile;)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v4}, Lcom/android/settings/vpn2/VpnDialog;->isEditing()Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/settings/vpn2/VpnSettings;->connect(Lcom/android/settings/vpn2/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v2, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, p0, v4, v3}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/settings/vpn2/VpnProfile;)V

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "VpnSettings"

    const-string v5, "connect"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    const-string v2, "VpnSettings"

    const-string v3, "onContextItemSelected() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-nez v0, :cond_1

    const-string v2, "VpnSettings"

    const-string v3, "onContextItemSelected() is called but no preference is found"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v4

    invoke-direct {v1, v3, p0, v4, v2}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v1, p0}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnDialog;->show()V

    move v1, v2

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b068f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f050043

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->filter:Landroid/content/IntentFilter;

    const-string v2, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "VpnKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VpnProfile"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/vpn2/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "VpnEditing"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    const v6, 0x7f0b0690

    const v5, 0x7f0b068f

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v2, :cond_1

    const-string v2, "VpnSettings"

    const-string v3, "onCreateContextMenu() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    instance-of v2, v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v1

    iget-object v2, v1, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    invoke-interface {p1, v4, v5, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    invoke-interface {p1, v4, v6, v4, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings;->unregisterForContextMenu(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    const-string v3, "VpnSettings"

    const-string v4, "onPreferenceClick() is called when mDialog != null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_0
    instance-of v3, p1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v3, :cond_2

    check-cast p1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {p1}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_1
    new-instance v3, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v2, v5}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    :goto_1
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v3, p0}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnDialog;->show()V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_2
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_2

    :cond_3
    new-instance v3, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/settings/vpn2/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, v5, v7}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    goto :goto_1
.end method

.method public onResume()V
    .locals 13

    const/4 v9, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v10

    sget-object v11, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v10, v11, :cond_2

    iget-boolean v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v10, :cond_1

    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    :goto_0
    iget-boolean v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v10, :cond_0

    const/4 v9, 0x1

    :cond_0
    iput-boolean v9, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->finishFragment()V

    goto :goto_0

    :cond_2
    iput-boolean v9, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    if-nez v10, :cond_5

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    const-string v11, "VPN_"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    array-length v10, v5

    if-lez v10, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v0, v5

    array-length v6, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_4

    aget-object v4, v0, v3

    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VPN_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/settings/vpn2/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v8

    if-nez v8, :cond_3

    const-string v10, "VpnSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bad profile: key = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VPN_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v7, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    invoke-direct {v7, p0, v1, v8}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/settings/vpn2/VpnProfile;)V

    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-virtual {v10, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_4
    const-string v10, "add_network"

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_5
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v10, p0}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v10}, Lcom/android/settings/vpn2/VpnDialog;->show()V

    :cond_6
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v10, :cond_7

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    :cond_7
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v10, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/vpn2/VpnSettings;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnDialog;->getProfile()Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v0

    const-string v1, "VpnKey"

    iget-object v2, v0, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VpnProfile"

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnProfile;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "VpnEditing"

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v2}, Lcom/android/settings/vpn2/VpnDialog;->isEditing()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
