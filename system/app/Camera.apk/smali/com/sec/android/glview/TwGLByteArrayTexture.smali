.class public Lcom/sec/android/glview/TwGLByteArrayTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLByteArrayTexture.java"


# instance fields
.field private mBitmapData:[B

.field private mSampleSize:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF[B)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mSampleSize:I

    iput-object p6, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF[BZ)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mSampleSize:I

    iput-object p6, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF[B)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mSampleSize:I

    iput-object p4, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    return-void
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v2, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mSampleSize:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    iget-object v3, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    array-length v3, v3

    invoke-static {v2, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    return-object v0
.end method

.method public setSampleSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mSampleSize:I

    return-void
.end method
