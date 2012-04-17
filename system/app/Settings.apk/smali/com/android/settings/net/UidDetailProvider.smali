.class public Lcom/android/settings/net/UidDetailProvider;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUidDetailCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/net/UidDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public getUidDetail(IZ)Lcom/android/settings/net/UidDetail;
    .locals 14

    iget-object v12, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v12, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/net/UidDetail;

    if-eqz v1, :cond_0

    move-object v3, v1

    :goto_0
    return-object v3

    :cond_0
    if-nez p2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v12, p0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    new-instance v3, Lcom/android/settings/net/UidDetail;

    invoke-direct {v3}, Lcom/android/settings/net/UidDetail;-><init>()V

    invoke-virtual {v10, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {v10, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    array-length v6, v9

    :goto_1
    const/4 v12, 0x1

    if-ne v6, v12, :cond_5

    const/4 v12, 0x0

    :try_start_0
    aget-object v12, v9, v12

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    iget-object v12, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    :cond_3
    iget-object v12, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v12, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_0
    const v12, 0x7f0b0577

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v12, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v12, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    const v12, 0x7f0b0671

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v12, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v12, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v12, p0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-string v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-static {v2}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v12, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v12, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    const/4 v12, 0x1

    if-le v6, v12, :cond_2

    :try_start_1
    new-array v12, v6, [Ljava/lang/CharSequence;

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_2

    aget-object v8, v9, v4

    const/4 v12, 0x0

    invoke-virtual {v10, v8, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v10, v8, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v12, v3, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v4

    iget v12, v7, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v12, :cond_6

    iget v12, v7, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v8, v12, v13}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_0
    move-exception v12

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
