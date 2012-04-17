.class public Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;
.super Lcom/sec/android/glview/TwGLAniViewGroup;
.source "TwGLPostViewShrink.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "TwGLPostViewShutter"

.field private static final THUMBNAIL_LEFT:I = 0x2d8

.field private static final THUMBNAIL_SIZE:I = 0x42

.field private static final THUMBNAIL_TOP:I = 0x190


# instance fields
.field mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFLandroid/graphics/Bitmap;Z)V
    .locals 14

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v6

    int-to-float v5, v6

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLAniViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v13

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v10

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlip()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setFlip(Z)V

    :cond_0
    :goto_0
    const/high16 v2, 0x4284

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    div-float v3, v2, v4

    const/high16 v2, 0x4284

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    div-float v5, v2, v4

    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    const/high16 v4, 0x3f80

    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 v7, p2

    move/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v2, v4, v13, v10}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v12, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/high16 v4, 0x4436

    sub-float v4, v4, p2

    const/4 v6, 0x0

    const/high16 v7, 0x43c8

    sub-float v7, v7, p3

    invoke-direct {v12, v2, v4, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v12, v2, v4, v13, v10}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v12, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlip()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setFlip(Z)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->playAnimation(I)V

    return-void
.end method


# virtual methods
.method protected setAnimationStep(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
