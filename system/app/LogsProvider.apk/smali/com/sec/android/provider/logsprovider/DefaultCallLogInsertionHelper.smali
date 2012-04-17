.class Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;
.super Ljava/lang/Object;
.source "DefaultCallLogInsertionHelper.java"

# interfaces
.implements Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;


# static fields
.field private static sInstance:Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;


# instance fields
.field private final mCountryMonitor:Lcom/sec/android/provider/logsprovider/CountryMonitor;

.field private final mLocale:Ljava/util/Locale;

.field private mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

.field private mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/provider/logsprovider/CountryMonitor;

    invoke-direct {v0, p1}, Lcom/sec/android/provider/logsprovider/CountryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mCountryMonitor:Lcom/sec/android/provider/logsprovider/CountryMonitor;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method private getCurrentCountryIso()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mCountryMonitor:Lcom/sec/android/provider/logsprovider/CountryMonitor;

    invoke-virtual {v0}, Lcom/sec/android/provider/logsprovider/CountryMonitor;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;
    .locals 2

    const-class v1, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->sInstance:Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;

    invoke-direct {v0, p0}, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->sInstance:Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;

    :cond_0
    sget-object v0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->sInstance:Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getPhoneNumberOfflineGeocoder()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getPhoneNumberUtil()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private parsePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->getPhoneNumberUtil()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addComputedValues(Landroid/content/ContentValues;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    const-string v1, "countryiso"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "geocoded_location"

    const-string v2, "number"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->parsePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->getPhoneNumberOfflineGeocoder()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0, v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
