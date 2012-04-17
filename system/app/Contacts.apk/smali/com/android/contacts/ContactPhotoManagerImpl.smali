.class Lcom/android/contacts/ContactPhotoManagerImpl;
.super Lcom/android/contacts/ContactPhotoManager;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPhotoManagerImpl$Request;,
        Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;,
        Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCacheRedZoneBytes:I

.field private final mContext:Landroid/content/Context;

.field private mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/android/contacts/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManager;-><init>()V

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/util/LruCache;

    const v3, 0x7f0b0003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v2, Lcom/android/contacts/ContactPhotoManagerImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/ContactPhotoManagerImpl$1;-><init>(Lcom/android/contacts/ContactPhotoManagerImpl;I)V

    iput-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/ContactPhotoManagerImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/ContactPhotoManagerImpl;->obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cacheBitmap(Ljava/lang/Object;[BZ)V
    .locals 2

    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    invoke-direct {v0, p2}, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;-><init>([B)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-nez p3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;)V

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;)V
    .locals 5

    iget-object v1, p1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;J)Z
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    if-nez v0, :cond_0

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;J)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-nez v1, :cond_1

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;J)V

    iget-boolean v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;)V

    iget-object v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    iget-object v2, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p2, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    iget-boolean v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0
.end method

.method private loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;J)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->requestLoading()V

    goto :goto_0
.end method

.method private obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    invoke-interface {p3}, Ljava/util/Set;->clear()V

    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-nez v3, :cond_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->isUriRequest()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->access$000(Lcom/android/contacts/ContactPhotoManagerImpl$Request;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->access$100(Lcom/android/contacts/ContactPhotoManagerImpl$Request;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->access$100(Lcom/android/contacts/ContactPhotoManagerImpl$Request;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private processLoadedImages()V
    .locals 6

    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    const-wide/16 v4, 0x0

    invoke-direct {p0, v3, v1, v4, v5}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->softenCache()V

    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->requestLoading()V

    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private softenCache()V
    .locals 3

    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public ensureLoaderThread()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;-><init>(Lcom/android/contacts/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->start()V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iput-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    iget-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->ensureLoaderThread()V

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestLoading()V

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->processLoadedImages()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    move-object v0, p6

    move-object v1, p1

    move v2, p4

    move v3, p5

    move-wide v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;ZZJ)V

    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->createFromId(JZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0, p7, p8}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;J)V

    goto :goto_0
.end method

.method public loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V
    .locals 6

    if-nez p2, :cond_0

    move-object v0, p5

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-wide v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;ZZJ)V

    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-static {p2, p3, p4, p5}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;ZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0, p6, p7}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;J)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    return-void
.end method

.method public preloadPhotosInBackground()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->ensureLoaderThread()V

    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    return-void
.end method

.method public refreshCache()V
    .locals 3

    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->requestLoading()V

    :cond_0
    return-void
.end method
