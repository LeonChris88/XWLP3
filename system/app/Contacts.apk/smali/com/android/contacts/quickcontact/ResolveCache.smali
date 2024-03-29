.class public Lcom/android/contacts/quickcontact/ResolveCache;
.super Ljava/lang/Object;
.source "ResolveCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/ResolveCache$1;,
        Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/contacts/quickcontact/ResolveCache;

.field private static final sPreferResolve:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/quickcontact/ResolveCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/ResolveCache;->sPreferResolve:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static declared-synchronized flush()V
    .locals 2

    const-class v0, Lcom/android/contacts/quickcontact/ResolveCache;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;
    .locals 3

    const-class v1, Lcom/android/contacts/quickcontact/ResolveCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/quickcontact/ResolveCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/contacts/quickcontact/ResolveCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v10, 0x1

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget v9, v2, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v10, 0xfff

    and-int/2addr v9, v10

    if-nez v9, :cond_0

    move v1, v7

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-object v2

    :cond_0
    move v1, v8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    move v6, v7

    :goto_3
    sget-object v9, Lcom/android/contacts/quickcontact/ResolveCache;->sPreferResolve:Ljava/util/HashSet;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v2, v4

    goto :goto_1

    :cond_3
    move v6, v8

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    move-object v0, v4

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    :goto_4
    move-object v2, v0

    goto :goto_1

    :cond_6
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    move-object v0, v7

    goto :goto_4
.end method

.method public getDescription(Lcom/android/contacts/quickcontact/Action;)Ljava/lang/CharSequence;
    .locals 3

    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v2

    iget-object v1, v2, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    if-eqz v1, :cond_0

    iget-object v9, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    if-eqz v9, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    const/4 v9, 0x0

    invoke-direct {v1, v9}, Lcom/android/contacts/quickcontact/ResolveCache$Entry;-><init>(Lcom/android/contacts/quickcontact/ResolveCache$1;)V

    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v9, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v4, 0x0

    :cond_1
    if-eqz v4, :cond_4

    iget-object v9, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v10, 0x1

    invoke-virtual {v9, v4, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    const/4 v0, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v12, :cond_5

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v9, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v9}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v0, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    iput-object v3, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "videocall"

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v9, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020116

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    goto :goto_0

    :cond_5
    if-le v8, v12, :cond_2

    invoke-virtual {p0, v4, v6}, Lcom/android/contacts/quickcontact/ResolveCache;->getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_1
.end method

.method public getIcon(Lcom/android/contacts/quickcontact/Action;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hasResolve(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
