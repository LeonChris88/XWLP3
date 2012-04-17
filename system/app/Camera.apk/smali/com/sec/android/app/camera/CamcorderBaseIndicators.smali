.class public Lcom/sec/android/app/camera/CamcorderBaseIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CamcorderBaseIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final SECONDS_IN_A_MINUTE:I = 0x3c

.field private static final TRANSLATE:I = 0x50


# instance fields
.field private final MAX_RECORDING_TIME:I

.field private final SECONDS_IN_AN_HOUR:I

.field private final SECONDS_IN_A_DAY:I

.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mBatteryLevel:I

.field private mContext:Landroid/content/Context;

.field private mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

.field private mHMS:Ljava/lang/String;

.field private mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

.field private mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

.field private mIndicatorGroup:Landroid/widget/RelativeLayout;

.field private mIndicatorRemainTime:Landroid/widget/TextView;

.field private mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

.field public mLastOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRemainTime:I

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

.field private mTranslateAnimation:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/16 v0, 0xe10

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->SECONDS_IN_AN_HOUR:I

    const v0, 0x15180

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->SECONDS_IN_A_DAY:I

    const v0, 0x1517f

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->MAX_RECORDING_TIME:I

    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHMS:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mBatteryLevel:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setCaptureEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setTouchHandled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CamcorderBaseIndicators;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CamcorderBaseIndicators;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CamcorderBaseIndicators;IILandroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->rotateButton(IILandroid/view/View;Z)V

    return-void
.end method

.method private hmsConvert(I)V
    .locals 9

    const/16 v8, 0xa

    const v6, 0x1517f

    if-le p1, v6, :cond_0

    const p1, 0x1517f

    :cond_0
    rem-int/lit8 v4, p1, 0x3c

    div-int/lit16 v0, p1, 0xe10

    div-int/lit8 v6, p1, 0x3c

    mul-int/lit8 v7, v0, 0x3c

    sub-int v2, v6, v7

    if-ge v4, v8, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-ge v2, v8, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-ge v0, v8, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHMS:Ljava/lang/String;

    return-void

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private init()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorRemainTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setFocusIndicator(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f080046

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->setSurfaceView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setOrientationListener()V

    return-void
.end method

.method private rotateButton(IILandroid/view/View;Z)V
    .locals 9

    const/high16 v2, 0x3f80

    const/high16 v4, 0x3f00

    const/high16 v8, -0x3d60

    const/4 v3, 0x1

    const/4 v7, 0x0

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_6

    const/16 p1, 0x168

    :cond_1
    :goto_1
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    rsub-int v2, p1, 0x168

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    if-eqz p4, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    if-eqz p4, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p4, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    if-nez v0, :cond_1

    const/16 v0, 0x168

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    goto/16 :goto_1

    :sswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x42a0

    invoke-direct {v0, v7, v8, v7, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    :sswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x42a0

    invoke-direct {v0, v7, v1, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    :sswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v7, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    :sswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v7, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    nop

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

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;-><init>(Lcom/sec/android/app/camera/CamcorderBaseIndicators;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public getBatteryLevel()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mBatteryLevel:I

    return v0
.end method

.method public getRemainTime()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mRemainTime:I

    return v0
.end method

.method public getTouchRectHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getYDelta()I

    move-result v0

    return v0
.end method

.method public getTouchRectWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getXDelta()I

    move-result v0

    return v0
.end method

.method public hideFocusIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setVisibility(I)V

    return-void
.end method

.method public hideTouchFocusIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->setVisibility(I)V

    return-void
.end method

.method public onBack()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAutoRotation()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLastOrientation:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->rotateButton(IILandroid/view/View;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->updateStorageIndicator()V

    return-void
.end method

.method public resetTouchFocusRectView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->reset()V

    return-void
.end method

.method public resumeOrientationListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method public setBatteryCharging()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 5

    const/16 v4, 0x18

    const/16 v3, 0xe

    const/4 v0, 0x4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput p1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mBatteryLevel:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void

    :cond_0
    if-le p1, v0, :cond_1

    if-gt p1, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    :cond_1
    if-le p1, v3, :cond_2

    if-gt p1, v4, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    :cond_2
    if-le p1, v4, :cond_3

    const/16 v0, 0x27

    if-gt p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x27

    if-le p1, v0, :cond_4

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x3b

    if-le p1, v0, :cond_5

    const/16 v0, 0x4f

    if-gt p1, v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0
.end method

.method public setFocusIndicator(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setFocusIndicator(I)V

    return-void
.end method

.method public setRemainTime(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mRemainTime:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->hmsConvert(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorRemainTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTouchFocusRectCenter(IIII)V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getXDelta()I

    move-result v3

    sub-int v3, p1, v3

    add-int/lit8 v0, v3, -0x40

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getYDelta()I

    move-result v3

    sub-int v3, p2, v3

    add-int/lit8 v1, v3, -0x40

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    sub-int v4, p3, v0

    sub-int v5, p4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->setPhysicalRectSize(II)V

    return-void
.end method

.method public shrinkTouchFocusRect()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->shrinkRect()V

    return-void
.end method

.method public updateGuidelines()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    return-void
.end method

.method public updateStorageIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    return-void
.end method
