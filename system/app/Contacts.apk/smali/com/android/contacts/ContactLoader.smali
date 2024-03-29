.class public Lcom/android/contacts/ContactLoader;
.super Landroid/content/Loader;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactLoader$1;,
        Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;,
        Lcom/android/contacts/ContactLoader$LoadContactTask;,
        Lcom/android/contacts/ContactLoader$BlackQuery;,
        Lcom/android/contacts/ContactLoader$GroupQuery;,
        Lcom/android/contacts/ContactLoader$DirectoryQuery;,
        Lcom/android/contacts/ContactLoader$ContactQuery;,
        Lcom/android/contacts/ContactLoader$Result;,
        Lcom/android/contacts/ContactLoader$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader",
        "<",
        "Lcom/android/contacts/ContactLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mContact:Lcom/android/contacts/ContactLoader$Result;

.field private mDestroyed:Z

.field private mLoadGroupMetaData:Z

.field private final mLoadInvitableAccountTypes:Z

.field private mLoadStreamItems:Z

.field private mLookupUri:Landroid/net/Uri;

.field private final mNotifiedRawContactIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mObserverBlack:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private final mRequestedUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZZZ)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/contacts/ContactLoader;->mLoadGroupMetaData:Z

    iput-boolean p4, p0, Lcom/android/contacts/ContactLoader;->mLoadStreamItems:Z

    iput-boolean p5, p0, Lcom/android/contacts/ContactLoader;->mLoadInvitableAccountTypes:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/ContactLoader;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/ContactLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader;->mLoadGroupMetaData:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/ContactLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/ContactLoader;->unregisterObserver()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/contacts/ContactLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/contacts/ContactLoader;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/contacts/ContactLoader;)Landroid/content/Loader$ForceLoadContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/contacts/ContactLoader;Landroid/content/Loader$ForceLoadContentObserver;)Landroid/content/Loader$ForceLoadContentObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/contacts/ContactLoader;)Landroid/content/Loader$ForceLoadContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserverBlack:Landroid/content/Loader$ForceLoadContentObserver;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/contacts/ContactLoader;Landroid/content/Loader$ForceLoadContentObserver;)Landroid/content/Loader$ForceLoadContentObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/ContactLoader;->mObserverBlack:Landroid/content/Loader$ForceLoadContentObserver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/ContactLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader;->mLoadStreamItems:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/ContactLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/ContactLoader;->postViewNotificationToSyncAdapter()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/ContactLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader;->mLoadInvitableAccountTypes:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    return-object v0
.end method

.method private postViewNotificationToSyncAdapter()V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Entity;

    invoke-virtual {v5}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v6

    const-string v15, "_id"

    invoke-virtual {v6, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v15, "account_type"

    invoke-virtual {v6, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "data_set"

    invoke-virtual {v6, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v15

    invoke-virtual {v15, v13, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountType;->getViewContactNotifyServiceClassName()Ljava/lang/String;

    move-result-object v12

    iget-object v11, v1, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    sget-object v15, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v2, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v15, "ContactLoader"

    const-string v16, "Error sending message to source-app"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unregisterObserver()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserverBlack:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader;->mObserverBlack:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/contacts/ContactLoader;->mObserverBlack:Landroid/content/Loader$ForceLoadContentObserver;

    :cond_1
    return-void
.end method


# virtual methods
.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected onForceLoad()V
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lcom/android/contacts/ContactLoader$LoadContactTask;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;-><init>(Lcom/android/contacts/ContactLoader;Lcom/android/contacts/ContactLoader$1;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onReset()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactLoader;->unregisterObserver()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader;->mDestroyed:Z

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader;->forceLoad()V

    :cond_2
    return-void
.end method
