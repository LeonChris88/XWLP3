.class public Lcom/sec/android/app/camera/CameraIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CameraIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final INDICATOR_WIDTH:I = 0x20

.field private static final LANDSCAPE_POS_X:I = 0x190

.field private static final LANDSCAPE_POS_Y:I = 0x8

.field private static final PORTRAIT_POS_X:I = 0x52

.field private static final PORTRAIT_POS_Y:I = 0xf0

.field private static final SCREEN_HEIGHT:I = 0x1e0

.field private static final SCREEN_WIDTH:I = 0x320


# instance fields
.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mContext:Landroid/content/Context;

.field private mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

.field private mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

.field private mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

.field private mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

.field private mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

.field private mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

.field private mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

.field private mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

.field private mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

.field public mLastOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    iput-object v8, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    iput v7, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    iput-object v8, p0, Lcom/sec/android/app/camera/CameraIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v8, p0, Lcom/sec/android/app/camera/CameraIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v8, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v8, p0, Lcom/sec/android/app/camera/CameraIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraIndicators;->setTouchHandled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraIndicators;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraIndicators;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraIndicators;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CameraIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorGPS;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CameraIndicators;IILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/CameraIndicators;->rotateButton(IILandroid/view/View;)V

    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraIndicators;->setOrientationListener()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraIndicators;->initIndicators()V

    return-void
.end method

.method private rotateButton(IILandroid/view/View;)V
    .locals 9

    const/16 v8, 0xf0

    const/high16 v5, 0x3f80

    const/high16 v4, 0x3f00

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    const/16 p1, 0x168

    :cond_1
    :goto_1
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    rsub-int v2, p1, 0x168

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    sparse-switch p1, :sswitch_data_0

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    if-nez v0, :cond_1

    const/16 v0, 0x168

    iput v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    goto/16 :goto_1

    :sswitch_0
    const/16 v0, 0x52

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :sswitch_1
    const/16 v0, 0x2ae

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :sswitch_2
    const/16 v0, 0x190

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0x1b8

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :sswitch_3
    const/16 v0, 0x190

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0x8

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_1
        0x168 -> :sswitch_3
    .end sparse-switch
.end method

.method private roundOrientation(I)I
    .locals 3

    move v0, p1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    rem-int/lit16 v0, v0, 0x168

    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    const/16 v1, 0x5a

    goto :goto_0

    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    const/16 v1, 0xb4

    goto :goto_0

    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    const/16 v1, 0x10e

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setOrientationListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/CameraIndicators$1;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CameraIndicators$1;-><init>(Lcom/sec/android/app/camera/CameraIndicators;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method


# virtual methods
.method protected ChangeAntiShake(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;->setAntiShake(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected ChangeFocusmode(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->setFocusmode(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->setFocusmode(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected ChangeGPS(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V

    iget v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraIndicators;->rotateButton(IILandroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected ChangeISO(I)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected ChangeMetering(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorMetering;->clearAnimation()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorMetering;->setMetering(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorMetering;->setMetering(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorMetering;->setMetering(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected ChangeOutdoorVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->setOutdoorVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected ChangeResolution(I)V
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x5

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->clearAnimation()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method protected ChangeTimer(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected ChangeWhiteBalance(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public disableOrientationListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public initIndicators()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGps()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeGPS(I)V

    return-void
.end method

.method public onBack()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeGPS(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAutoRotation()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraIndicators;->rotateButton(IILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public resumeOrientationListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method public setConnectingStateGPS(I)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraIndicators;->rotateButton(IILandroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
