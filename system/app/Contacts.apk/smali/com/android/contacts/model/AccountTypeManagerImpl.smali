.class Lcom/android/contacts/model/AccountTypeManagerImpl;
.super Lcom/android/contacts/model/AccountTypeManager;
.source "AccountTypeManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/content/SyncStatusObserver;


# static fields
.field private static final ACCOUNT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountTypesWithDataSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContactWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFallbackAccount:Landroid/accounts/Account;

.field private mFallbackAccountType:Lcom/android/contacts/model/AccountType;

.field private mGroupWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

.field private mInvitableAccountTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerHandler:Landroid/os/Handler;

.field private mListenerThread:Landroid/os/HandlerThread;

.field private mSimAccount:Landroid/accounts/Account;

.field private mSimAccountType:Lcom/android/contacts/model/AccountType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/model/AccountTypeManagerImpl$2;

    invoke-direct {v0}, Lcom/android/contacts/model/AccountTypeManagerImpl$2;-><init>()V

    sput-object v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManager;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypes:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    new-instance v2, Lcom/android/contacts/model/AccountTypeManagerImpl$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/model/AccountTypeManagerImpl$1;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/contacts/model/FallbackAccountType;

    invoke-direct {v2, p1}, Lcom/android/contacts/model/FallbackAccountType;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;

    new-instance v2, Lcom/sec/android/app/contacts/model/SimAccountType;

    invoke-direct {v2, p1}, Lcom/sec/android/app/contacts/model/SimAccountType;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccountType:Lcom/android/contacts/model/AccountType;

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "vnd.sec.contact.phone"

    const-string v4, "vnd.sec.contact.phone"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccount:Landroid/accounts/Account;

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "primary.sim.account_name"

    const-string v4, "vnd.sec.contact.sim"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AccountChangeListener"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/contacts/model/AccountTypeManagerImpl$3;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/model/AccountTypeManagerImpl$3;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v3, v5}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    invoke-static {v6, p0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addAccountType(Lcom/android/contacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/AccountType;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/contacts/model/AccountType;->getAccountTypeAndDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 5

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static findInvitableAccountTypes(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountType;

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "AccountTypeManager"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "AccountTypeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " inviteClass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v4}, Lcom/android/contacts/model/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method ensureAccountsLoaded()V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public getAccountType(Lcom/android/contacts/model/AccountTypeWithDataSet;)Lcom/android/contacts/model/AccountType;
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType;

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AccountTypeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "true: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    monitor-exit p0

    :goto_1
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccountType:Lcom/android/contacts/model/AccountType;

    goto :goto_0

    :cond_1
    const-string v1, "AccountTypeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "false: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    move-object v1, v0

    :goto_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccountTypes(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType;

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getAccounts(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_3

    :goto_1
    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_1
.end method

.method public getGoogleAccounts()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    const-string v3, "com.smlds.accountType"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.osp.app.signin"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.google"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getGoogleAccountsWithDataSet()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    const-string v3, "com.smlds.accountType"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.osp.app.signin"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.google"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getGroupWritableAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    return-object v0
.end method

.method public getInvitableAccountTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    return-object v0
.end method

.method public getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;
    .locals 5

    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/android/contacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountType;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;

    invoke-virtual {v2, p3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v2, "AccountTypeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public getWritableAccountsWithoutSim()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object v1
.end method

.method protected loadAccountsInBackground()V
    .locals 41

    const-string v37, "ContactsPerf"

    const/16 v38, 0x3

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v37

    if-eqz v37, :cond_0

    const-string v37, "ContactsPerf"

    const-string v38, "AccountTypeManager.loadAccountsInBackground start"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v35, Landroid/util/TimingLogger;

    const-string v37, "AccountTypeManager"

    const-string v38, "loadAccountsInBackground"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v28

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v24

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v16

    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v34

    invoke-virtual {v11}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v14

    move-object/from16 v12, v34

    array-length v0, v12

    move/from16 v27, v0

    const/16 v25, 0x0

    :goto_0
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    aget-object v32, v12, v25

    const-string v37, "com.android.contacts"

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_1

    :goto_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-static {v14, v0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v13

    if-nez v13, :cond_6

    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "No authenticator found for type="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", ignoring it."

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v17

    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Problem loading accounts: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v7, v6}, Lcom/android/contacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v37

    if-eqz v37, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v7, v6}, Lcom/android/contacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    :cond_3
    const-string v37, "Loaded account types"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v9

    move-object v12, v9

    array-length v0, v12

    move/from16 v27, v0

    const/16 v25, 0x0

    move/from16 v26, v25

    :goto_2
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_12

    aget-object v3, v12, v26

    const/16 v33, 0x0

    :try_start_1
    const-string v37, "com.android.contacts"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-interface {v0, v3, v1}, Landroid/content/IContentService;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v37

    if-lez v37, :cond_10

    const/16 v33, 0x1

    :goto_3
    if-eqz v33, :cond_11

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_11

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_4
    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_11

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountType;

    new-instance v8, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v37, v0

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v38, v0

    iget-object v0, v4, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v8, v0, v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v37

    if-eqz v37, :cond_5

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v4}, Lcom/android/contacts/model/AccountType;->isGroupMembershipEditable()Z

    move-result v37

    if-eqz v37, :cond_4

    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    :try_start_2
    const-string v37, "com.google"

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_8

    new-instance v4, Lcom/android/contacts/model/GoogleAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v4, v0, v1}, Lcom/android/contacts/model/GoogleAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    :goto_5
    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iput-object v0, v4, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->labelId:I

    move/from16 v37, v0

    move/from16 v0, v37

    iput v0, v4, Lcom/android/contacts/model/AccountType;->titleRes:I

    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v37, v0

    move/from16 v0, v37

    iput v0, v4, Lcom/android/contacts/model/AccountType;->iconRes:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v6}, Lcom/android/contacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountType;->getExtensionPackageNames()Ljava/util/List;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_8
    const-string v37, "com.android.exchange"

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_9

    new-instance v4, Lcom/android/contacts/model/ExchangeAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v4, v0, v1}, Lcom/android/contacts/model/ExchangeAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string v37, "com.seven.Z7.yahoo"

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_a

    new-instance v4, Lcom/sec/android/app/contacts/model/YahooAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/contacts/model/YahooAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    const-string v37, "com.seven.Z7.msn"

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_b

    new-instance v4, Lcom/sec/android/app/contacts/model/MSNAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/contacts/model/MSNAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_b
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Registering external account type="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", packageName="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/contacts/model/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v4, v0, v1, v2}, Lcom/android/contacts/model/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    move-object v0, v4

    check-cast v0, Lcom/android/contacts/model/ExternalAccountType;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/contacts/model/ExternalAccountType;->isInitialized()Z

    move-result v37

    if-nez v37, :cond_7

    goto/16 :goto_1

    :cond_c
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_2

    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Registering "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " extension packages"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_d
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    new-instance v4, Lcom/android/contacts/model/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    move/from16 v2, v38

    invoke-direct {v4, v0, v1, v2}, Lcom/android/contacts/model/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v4}, Lcom/android/contacts/model/ExternalAccountType;->isInitialized()Z

    move-result v37

    if-eqz v37, :cond_d

    invoke-virtual {v4}, Lcom/android/contacts/model/ExternalAccountType;->hasContactsMetadata()Z

    move-result v37

    if-nez v37, :cond_e

    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Skipping extension package "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " because"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " it doesn\'t have the CONTACTS_STRUCTURE metadata"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_e
    iget-object v0, v4, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_f

    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Skipping extension package "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " because"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " the CONTACTS_STRUCTURE metadata doesn\'t have the accountType"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " attribute"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_f
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Registering extension package account type="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v4, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", dataSet="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v4, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", packageName="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v6}, Lcom/android/contacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    :cond_10
    const/16 v33, 0x0

    goto/16 :goto_3

    :catch_1
    move-exception v17

    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Cannot obtain sync flag for account: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_11
    add-int/lit8 v25, v26, 0x1

    move/from16 v26, v25

    goto/16 :goto_2

    :cond_12
    new-instance v8, Lcom/android/contacts/model/AccountWithDataSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccount:Landroid/accounts/Account;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v8, v0, v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v37

    if-eqz v37, :cond_13

    new-instance v8, Lcom/android/contacts/model/AccountWithDataSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v8, v0, v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    sget-object v37, Lcom/android/contacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v37

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v37, Lcom/android/contacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v37

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v37, Lcom/android/contacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v37, "Loaded accounts"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_3
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-static {v0, v10, v7}, Lcom/android/contacts/model/AccountTypeManagerImpl;->findInvitableAccountTypes(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {v35 .. v35}, Landroid/util/TimingLogger;->dumpToLog()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v18

    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Loaded meta-data for "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/Map;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " account types, "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " accounts in "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sub-long v39, v20, v30

    invoke-virtual/range {v38 .. v40}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "ms(wall) "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sub-long v39, v18, v28

    invoke-virtual/range {v38 .. v40}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "ms(cpu)"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v37, v0

    if-eqz v37, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_14
    const-string v37, "ContactsPerf"

    const/16 v38, 0x3

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v37

    if-eqz v37, :cond_15

    const-string v37, "ContactsPerf"

    const-string v38, "AccountTypeManager.loadAccountsInBackground finish"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void

    :catchall_0
    move-exception v37

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v37
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->loadAccountsInBackground()V

    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public processBroadcastIntent(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
