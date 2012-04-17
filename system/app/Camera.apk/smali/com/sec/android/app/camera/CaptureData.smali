.class public Lcom/sec/android/app/camera/CaptureData;
.super Ljava/lang/Object;
.source "CaptureData.java"


# instance fields
.field private mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

.field private mCaptureOnlyData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public getCaptureBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/16 v0, 0x1e0

    const/16 v1, 0x168

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureData()[B
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    return-object v0
.end method

.method public setCaptureData([BI)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x1e0

    const/16 v3, 0x168

    iput-object p1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    iget-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    if-eqz v1, :cond_1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    iget-object v2, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    array-length v2, v2

    invoke-static {v1, v5, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
