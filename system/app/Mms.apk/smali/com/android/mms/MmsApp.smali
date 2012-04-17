.class public Lcom/android/mms/MmsApp;
.super Landroid/app/Application;
.source "MmsApp.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static sMmsApp:Lcom/android/mms/MmsApp;


# instance fields
.field private mCountryDetector:Landroid/location/CountryDetector;

.field private mCountryIso:Ljava/lang/String;

.field private mCountryListener:Landroid/location/CountryListener;

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    sput-object v0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/MmsApp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized getApplication()Lcom/android/mms/MmsApp;
    .locals 2

    const-class v0, Lcom/android/mms/MmsApp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initCountryIso()V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    const-string v0, "Mms/MmsApp"

    const-string v1, "got country"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "country_detector"

    invoke-virtual {p0, v0}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    new-instance v0, Lcom/android/mms/MmsApp$1;

    invoke-direct {v0, p0}, Lcom/android/mms/MmsApp$1;-><init>(Lcom/android/mms/MmsApp;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    return-void
.end method

.method private initViewCache()V
    .locals 0

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->init()V

    return-void
.end method


# virtual methods
.method public getCurrentCountryIso()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "Mms/MmsApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/layout/LayoutManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Mms/MmsApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const-string v0, "Mms/MmsApp"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    const-string v0, "com.android.mms_preferences"

    const v1, 0x7f050003

    invoke-static {p0, v0, v3, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    const-string v0, "com.android.mms_preferences"

    const/high16 v1, 0x7f05

    invoke-static {p0, v0, v3, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    const-string v0, "com.android.mms_preferences"

    const v1, 0x7f050001

    invoke-static {p0, v0, v3, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    invoke-direct {p0}, Lcom/android/mms/MmsApp;->initViewCache()V

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/util/DraftCache;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    invoke-static {p0}, Lcom/android/mms/ui/ConversationListFragment;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/util/DownloadManager;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/util/RateController;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/layout/LayoutManager;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/util/SmileyParser;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->init(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/mms/MmsApp;->initCountryIso()V

    invoke-static {p0}, Lcom/android/mms/Synchronizer;->doProcessing(Landroid/content/Context;)V

    const-string v0, "Mms/MmsApp"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTerminate()V
    .locals 2

    const-string v0, "Mms/MmsApp"

    const-string v1, "onTerminate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-virtual {v0, v1}, Landroid/location/CountryDetector;->removeCountryListener(Landroid/location/CountryListener;)V

    invoke-static {p0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    const-string v0, "Mms/MmsApp"

    const-string v1, "onTerminate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
