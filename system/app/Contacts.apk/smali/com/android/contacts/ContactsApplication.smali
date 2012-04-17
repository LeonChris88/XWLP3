.class public final Lcom/android/contacts/ContactsApplication;
.super Landroid/app/Application;
.source "ContactsApplication.java"


# static fields
.field private static sInjectedServices:Lcom/android/contacts/test/InjectedServices;


# instance fields
.field private final DEVELOPER_MODE:Z

.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ContactsApplication;->DEVELOPER_MODE:Z

    return-void
.end method

.method public static getInjectedServices()Lcom/android/contacts/test/InjectedServices;
    .locals 1

    sget-object v0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    return-object v0
.end method

.method public static injectServices(Lcom/android/contacts/test/InjectedServices;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1}, Lcom/android/contacts/test/InjectedServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2

    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1}, Lcom/android/contacts/test/InjectedServices;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1, p1}, Lcom/android/contacts/test/InjectedServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "contactAccountTypes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->createAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    goto :goto_0

    :cond_2
    const-string v1, "contactPhotos"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManager;->preloadPhotosInBackground()V

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    const/4 v3, 0x3

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ContactsPerf"

    const-string v2, "ContactsApplication.onCreate start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ContactsPerf"

    const-string v2, "ContactsApplication.onCreate finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
