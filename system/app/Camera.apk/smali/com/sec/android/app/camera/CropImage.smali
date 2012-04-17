.class public Lcom/sec/android/app/camera/CropImage;
.super Lcom/sec/android/app/camera/MonitoredActivity;
.source "CropImage.java"


# static fields
.field private static final LAND_BUTTON_HEIGHT:I = 0x52

.field private static final PORT_BUTTON_HEIGHT:I = 0x50

.field private static final TAG:Ljava/lang/String; = "CropImage"


# instance fields
.field private mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

.field private mAspectX:I

.field private mAspectY:I

.field public mAttachVideo:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field mBlinkRect:Lcom/sec/android/app/camera/HighlightView;

.field public mBlinkRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public mCircleCrop:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field mCrop:Lcom/sec/android/app/camera/HighlightView;

.field private mDateTaken:J

.field private mDiscard:Landroid/widget/LinearLayout;

.field public mFromApp:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImage:Lcom/sec/android/app/camera/gallery/IImage;

.field private mImageView:Lcom/sec/android/app/camera/CropImageView;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mLatitude:D

.field private mLongitude:D

.field private mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mOutputX:I

.field private mOutputY:I

.field public mRectCrop:Z

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSave:Landroid/widget/LinearLayout;

.field private mSaveUri:Landroid/net/Uri;

.field mSaving:Z

.field private mScale:Z

.field private mScaleUp:Z

.field private mSetWallpaper:Z

.field mWaitingToPick:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/MonitoredActivity;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mRectCrop:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mFromApp:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mAttachVideo:Z

    iput-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CropImage;->mScaleUp:Z

    iput-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/sec/android/app/camera/CropImage$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CropImage$7;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CropImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CropImage;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/CropImage;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CropImage;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CropImage;->mAspectY:I

    return v0
.end method

.method private onSaveClicked()V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    if-eqz v16, :cond_2

    const-string v1, "attach-video"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CropImage"

    const-string v3, "Attach = Video"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    if-nez v1, :cond_6

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-eqz v16, :cond_3

    const-string v1, "return-uri"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    if-nez v1, :cond_3

    const-string v1, "CropImage"

    const-string v3, "Crop = no, Return = uri"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uri-data"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto :goto_0

    :cond_3
    if-eqz v16, :cond_4

    const-string v1, "return-data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    if-nez v1, :cond_4

    const-string v1, "CropImage"

    const-string v3, "Crop = no, Return = data"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bitmap-data"

    const/4 v3, 0x1

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_0

    :cond_4
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    if-nez v1, :cond_5

    const-string v1, "CropImage"

    const-string v3, "Crop = no, Return = specified uri"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string v1, "specify-data"

    const/4 v3, 0x1

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "uri-data"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mFromApp:Z

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mSaving:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mSaving:Z

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mScale:Z

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v19

    new-instance v10, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    invoke-direct {v10, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v11, v1, 0x2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v12, v1, 0x2

    const/4 v1, 0x0

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    const/4 v1, 0x0

    neg-int v3, v11

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    neg-int v4, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v10, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v9, v1, v0, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_7
    :goto_2
    if-eqz v16, :cond_c

    const-string v1, "data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, "return-data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_8
    const-string v1, "CropImage"

    const-string v3, "Crop = yes, Return = data"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v20

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    if-eqz v1, :cond_b

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_3
    move/from16 v0, v20

    invoke-static {v0, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-direct {v10, v1, v3, v0, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v9, v1, v0, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    if-eqz v1, :cond_a

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move/from16 v0, v20

    int-to-float v1, v0

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    int-to-float v3, v14

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move/from16 v0, v20

    int-to-float v4, v0

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mScale:Z

    if-eqz v1, :cond_7

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/app/camera/CropImage;->mScaleUp:Z

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/camera/Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_2

    :cond_b
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    :cond_c
    const-string v1, "CropImage"

    const-string v3, "Crop = yes, Return = specified uri"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    if-eqz v1, :cond_d

    const v15, 0x7f0900ee

    :goto_4
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/CropImage$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/sec/android/app/camera/CropImage$5;-><init>(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3, v4, v5}, Lcom/sec/android/app/camera/Util;->startBackgroundJob(Lcom/sec/android/app/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_1

    :cond_d
    const v15, 0x7f09000c

    goto :goto_4
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x4b

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    const-string v2, "takenTime"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/camera/CropImage;->mDateTaken:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/camera/CropImage;->mLatitude:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/camera/CropImage;->mLongitude:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "latitude"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/camera/CropImage;->mLatitude:D

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "longitude"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/camera/CropImage;->mLongitude:D

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_2
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    :cond_3
    :goto_1
    move-object/from16 v12, p1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/camera/CropImage$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/sec/android/app/camera/CropImage$6;-><init>(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    return-void

    :catch_0
    move-exception v16

    :try_start_1
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    if-eqz v2, :cond_5

    :try_start_2
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v15

    const-string v2, "CropImage"

    const-string v3, "Failed to set wallpaper."

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V

    goto :goto_1

    :cond_5
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    const-string v2, "rect"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    const/4 v2, 0x0

    const/16 v3, 0x2e

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    :cond_6
    add-int/lit8 v23, v23, 0x1

    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_6

    const/4 v2, 0x1

    :try_start_3
    new-array v11, v2, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImage;->getDateTaken()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v11}, Lcom/sec/android/app/camera/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v16

    const-string v2, "CropImage"

    const-string v3, "store image fail, continue anyway"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private setButtonLayout(Landroid/content/res/Configuration;)V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage;->mSave:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage;->mDiscard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/16 v1, 0x52

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method private startFaceDetection()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CropImage$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CropImage$4;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/Util;->startBackgroundJob(Lcom/sec/android/app/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public getBlinkRectCnt()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MonitoredActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const v10, 0x7f080030

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->requestWindowFeature(I)Z

    const v6, 0x7f030008

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CropImage;->setContentView(I)V

    const v6, 0x7f08002f

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/CropImageView;

    iput-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    invoke-static {p0}, Lcom/sec/android/app/camera/MenuHelper;->showStorageToast(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v6, "circleCrop"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mAspectX:I

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mAspectY:I

    :cond_0
    :goto_0
    const-string v6, "output"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v6, :cond_5

    const-string v6, "outputFormat"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    :cond_1
    :goto_1
    const-string v6, "data"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    iput-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const-string v6, "aspectX"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/camera/CropImage;->mAspectX:I

    const-string v6, "aspectY"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/camera/CropImage;->mAspectY:I

    const-string v6, "outputX"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    const-string v6, "outputY"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    const-string v6, "scale"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/app/camera/CropImage;->mScale:Z

    const-string v6, "scaleUpIfNeeded"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/app/camera/CropImage;->mScaleUp:Z

    const-string v6, "attach-video"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/app/camera/CropImage;->mAttachVideo:Z

    const-string v6, "fromApp"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/app/camera/CropImage;->mFromApp:Z

    const-string v6, "blink-rect"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    const-string v6, "latitude"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/app/camera/CropImage;->mLatitude:D

    const-string v6, "longitude"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/app/camera/CropImage;->mLongitude:D

    const-string v6, "takenTime"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/app/camera/CropImage;->mDateTaken:J

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v5, v8}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v6, v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    iget-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    if-eqz v6, :cond_3

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    const/4 v7, -0x1

    const/high16 v8, 0x10

    invoke-interface {v6, v7, v8}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    :goto_3
    return-void

    :cond_4
    const-string v6, "rectCrop"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mRectCrop:Z

    goto/16 :goto_0

    :cond_5
    const-string v6, "setWallpaper"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string v6, "CropImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot open Thumbnail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    const v6, 0x7f080033

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mDiscard:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mDiscard:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/sec/android/app/camera/CropImage$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/CropImage$1;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f080032

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mSave:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mSave:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/sec/android/app/camera/CropImage$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/CropImage$2;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    const v7, 0x7f080031

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CropImageView;->setButtonsLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/CropImage;->setButtonLayout(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage;->startFaceDetection()V

    iget-boolean v6, p0, Lcom/sec/android/app/camera/CropImage;->mAttachVideo:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v6, Lcom/sec/android/app/camera/CropImage$3;

    invoke-direct {v6, p0, v3}, Lcom/sec/android/app/camera/CropImage$3;-><init>(Lcom/sec/android/app/camera/CropImage;Landroid/content/Intent;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "CropImage"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CropImageView;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/MonitoredActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "CropImage"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/app/camera/MonitoredActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "CropImage"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MonitoredActivity;->onResume()V

    return-void
.end method
