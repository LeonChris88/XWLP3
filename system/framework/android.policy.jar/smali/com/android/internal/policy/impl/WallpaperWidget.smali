.class Lcom/android/internal/policy/impl/WallpaperWidget;
.super Landroid/widget/FrameLayout;
.source "WallpaperWidget.java"


# instance fields
.field private final ACTION_LOCKSCREEN_LIVE_WALLPAPER_CHANGED:Ljava/lang/String;

.field private final ACTION_LOCKSCREEN_WALLPAPER_CHANGED:Ljava/lang/String;

.field private final DBG:Z

.field private final MSG_LIVE_WALLPAPER_CHANGED:I

.field private final MSG_WALLPAPER_CHANGED:I

.field private final TAG:Ljava/lang/String;

.field private final WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "WallpaperWidget"

    iput-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->DBG:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const-string v1, "com.android.lockscreenwallpaper.CHANGED"

    iput-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->ACTION_LOCKSCREEN_WALLPAPER_CHANGED:Ljava/lang/String;

    const-string v1, "com.android.lockscreenwallpaper.LIVE_CHANGED"

    iput-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->ACTION_LOCKSCREEN_LIVE_WALLPAPER_CHANGED:Ljava/lang/String;

    const-string v1, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    iput-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    const/16 v1, 0x12c0

    iput v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->MSG_WALLPAPER_CHANGED:I

    const/16 v1, 0x12c1

    iput v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->MSG_LIVE_WALLPAPER_CHANGED:I

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/internal/policy/impl/WallpaperWidget;->addView(Landroid/view/View;II)V

    new-instance v1, Lcom/android/internal/policy/impl/WallpaperWidget$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/WallpaperWidget$1;-><init>(Lcom/android/internal/policy/impl/WallpaperWidget;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.lockscreenwallpaper.CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.lockscreenwallpaper.LIVE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/policy/impl/WallpaperWidget$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/WallpaperWidget$2;-><init>(Lcom/android/internal/policy/impl/WallpaperWidget;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setLockScreenWallpaper()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/WallpaperWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->handleWallpaperUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/WallpaperWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->handleLiveWallpaperUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/WallpaperWidget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getLockscreenWallpaperFromCSC()Ljava/io/InputStream;
    .locals 5

    new-instance v1, Ljava/io/File;

    const-string v4, "/system/wallpaper/default_lockscreen/default_lockscreen.jpg"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :cond_0
    move-object v4, v2

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private handleLiveWallpaperUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private handleWallpaperUpdate()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setLockScreenWallpaper()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setDefaultWallpaper()Ljava/io/InputStream;
    .locals 5

    const v4, 0x1080223

    new-instance v1, Ljava/io/File;

    const-string v3, "/system/wallpaper/default_wallpaper/default_wallpaper.jpg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method

.method private setLockScreenWallpaper()V
    .locals 7

    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setDefaultWallpaper()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getLockscreenWallpaperFromCSC()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setDefaultWallpaper()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const-string v3, "WallpaperWidget"

    const-string v4, "Set as LockscreenWallpaper from CSC"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string v0, "WallpaperWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
