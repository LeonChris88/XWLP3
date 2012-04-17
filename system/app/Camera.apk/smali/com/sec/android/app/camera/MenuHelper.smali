.class public Lcom/sec/android/app/camera/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuHelper$MenuCallback;,
        Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;,
        Lcom/sec/android/app/camera/MenuHelper$MenuItemsResult;
    }
.end annotation


# static fields
.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final INCLUDE_ALL:I = -0x1

.field public static final INCLUDE_CROP_MENU:I = 0x8

.field public static final INCLUDE_DELETE_MENU:I = 0x10

.field public static final INCLUDE_DETAILS_MENU:I = 0x40

.field public static final INCLUDE_ROTATE_MENU:I = 0x20

.field public static final INCLUDE_SET_MENU:I = 0x4

.field public static final INCLUDE_SHARE_MENU:I = 0x2

.field public static final INCLUDE_SHOWMAP_MENU:I = 0x80

.field public static final INCLUDE_VIEWPLAY_MENU:I = 0x1

.field public static final INVALID_LATLNG:F = 255.0f

.field public static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field public static final MENU_IMAGE_SHARE:I = 0x1

.field public static final MENU_IMAGE_SHOWMAP:I = 0x2

.field public static final NO_STORAGE_ERROR:I = -0x1

.field public static final POSITION_CAMERA_SETTING:I = 0xf

.field public static final POSITION_CAPTURE_PICTURE:I = 0x4

.field public static final POSITION_CAPTURE_VIDEO:I = 0x5

.field public static final POSITION_DETAILS:I = 0xb

.field public static final POSITION_GALLERY_SETTING:I = 0x10

.field public static final POSITION_GOTO_GALLERY:I = 0x2

.field public static final POSITION_IMAGE_CROP:I = 0x9

.field public static final POSITION_IMAGE_ROTATE:I = 0x7

.field public static final POSITION_IMAGE_SET:I = 0xa

.field public static final POSITION_IMAGE_SHARE:I = 0x6

.field public static final POSITION_IMAGE_TOSS:I = 0x8

.field public static final POSITION_MULTISELECT:I = 0xe

.field public static final POSITION_SHOWMAP:I = 0xc

.field public static final POSITION_SLIDESHOW:I = 0xd

.field public static final POSITION_SWITCH_CAMERA_MODE:I = 0x1

.field public static final POSITION_VIEWPLAY:I = 0x3

.field public static final RESULT_COMMON_MENU_CROP:I = 0x1ea

.field private static final TAG:Ljava/lang/String; = "MenuHelper"

.field protected static mDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculatePicturesRemaining()I
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->hasStorage()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, -0x1

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const v0, 0x16e360

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const v6, 0x49b71b00

    div-float v2, v5, v6

    float-to-int v5, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v5, -0x2

    goto :goto_0
.end method

.method public static closeDialog()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static confirmAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    new-instance v1, Lcom/sec/android/app/camera/MenuHelper$1;

    invoke-direct {v1, p3}, Lcom/sec/android/app/camera/MenuHelper$1;-><init>(Ljava/lang/Runnable;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    sget-object v2, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static enableShareMenuItem(Landroid/view/Menu;Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public static enableShowOnMapMenuItem(Landroid/view/Menu;Z)V
    .locals 2

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private static getExif(Lcom/sec/android/app/camera/gallery/IImage;)Landroid/media/ExifInterface;
    .locals 4

    const/4 v1, 0x0

    const-string v2, "image/jpeg"

    invoke-interface {p0}, Lcom/sec/android/app/camera/gallery/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-interface {p0}, Lcom/sec/android/app/camera/gallery/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MenuHelper"

    const-string v3, "cannot read exif"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getImageFileSize(Lcom/sec/android/app/camera/gallery/IImage;)J
    .locals 4

    const-wide/16 v2, -0x1

    invoke-interface {p0}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageData()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v2, v2

    invoke-static {v0}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v0}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static gotoCameraMode(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static gotoVideoMode(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "android.media.action.VIDEO_CAMERA"

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static hasLatLngData(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/camera/MenuHelper;->getExif(Lcom/sec/android/app/camera/gallery/IImage;)Landroid/media/ExifInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [F

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v2

    goto :goto_0
.end method

.method public static isWhiteListUri(Landroid/net/Uri;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v5, "content"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "media"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    const-string v5, "file"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v4, :cond_0

    const-string v5, "sdcard"

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public static showStorageToast(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private static startCameraActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->keep()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
