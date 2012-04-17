.class public Lcom/sec/android/provider/logsprovider/CountryMonitor;
.super Ljava/lang/Object;
.source "CountryMonitor.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentCountryIso:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/provider/logsprovider/CountryMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/provider/logsprovider/CountryMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/provider/logsprovider/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized getCountryIso()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/provider/logsprovider/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/provider/logsprovider/CountryMonitor;->mContext:Landroid/content/Context;

    const-string v2, "country_detector"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/provider/logsprovider/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    new-instance v1, Lcom/sec/android/provider/logsprovider/CountryMonitor$1;

    invoke-direct {v1, p0}, Lcom/sec/android/provider/logsprovider/CountryMonitor$1;-><init>(Lcom/sec/android/provider/logsprovider/CountryMonitor;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/provider/logsprovider/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
