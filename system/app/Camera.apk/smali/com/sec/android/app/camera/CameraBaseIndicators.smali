.class public Lcom/sec/android/app/camera/CameraBaseIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CameraBaseIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final INDICATOR_HEIGHT:I = 0x20

.field private static final INDICATOR_WIDTH:I = 0xa0

.field private static final INT_30:I = 0x1e

.field private static final LANDSCAPE_POS_X:I = 0x21c

.field private static final LANDSCAPE_POS_Y:I = 0x9

.field public static final NORMAL_MODE:I = 0x0

.field private static final PORTRAIT_POS_X:I = 0x14

.field private static final PORTRAIT_POS_Y:I = 0x5a

.field private static final SCREEN_HEIGHT:I = 0x1e0

.field private static final SCREEN_WIDTH:I = 0x320

.field public static final SHOOT_SHARE_MODE:I = 0x1

.field private static final VISIBLE_REMAIN_COUNT:I = 0x12c


# instance fields
.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mContext:Landroid/content/Context;

.field private mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

.field private mIndicatorGroup:Landroid/widget/LinearLayout;

.field private mIndicatorParentGroup:Landroid/widget/RelativeLayout;

.field private mIndicatorParentGroupNormal:Landroid/widget/RelativeLayout;

.field private mIndicatorRemainCount:Landroid/widget/TextView;

.field private mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

.field public mIndicatorWifiApSSID:Landroid/widget/ImageView;

.field private mIndicatorWifiGroup:Landroid/widget/LinearLayout;

.field private mIndicatorWifiParentGroup:Landroid/widget/RelativeLayout;

.field public mLastOrientation:I

.field private mNormalGroup:Landroid/widget/LinearLayout;

.field private mOrientationEnabled:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRemainCount:I

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mShootMode:I

.field private mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mTextMessage:Landroid/widget/TextView;


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

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRemainCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mShootMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setTouchHandled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraBaseIndicators;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CameraBaseIndicators;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CameraBaseIndicators;IILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/CameraBaseIndicators;->rotateButton(IILandroid/view/View;)V

    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroupNormal:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mNormalGroup:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorRemainCount:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiParentGroup:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiGroup:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiApSSID:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mNormalGroup:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroupNormal:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroup:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setOrientationListener()V

    return-void
.end method

.method private rotateButton(IILandroid/view/View;)V
    .locals 8

    const/16 v5, 0x10e

    const/high16 v2, 0x3f80

    const/high16 v4, 0x3f00

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    if-ne v0, v5, :cond_2

    const/16 p1, 0x168

    :cond_1
    :goto_1
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    rsub-int v2, p1, 0x168

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sparse-switch p1, :sswitch_data_0

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto/16 :goto_0

    :cond_2
    if-ne p1, v5, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    if-nez v0, :cond_1

    const/16 v0, 0x168

    iput v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    goto/16 :goto_1

    :sswitch_0
    const/16 v0, 0x3c

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0x32

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :sswitch_1
    const/16 v0, 0x41a

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0x2bc

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :sswitch_2
    const/16 v0, 0x78

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0x2ee

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :sswitch_3
    const/16 v0, 0x3e8

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0xc

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_3
    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_2

    :sswitch_4
    const/16 v0, 0x21c

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0x9

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :sswitch_5
    const/16 v0, 0x14

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0x5a

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :sswitch_6
    const/16 v0, 0x26c

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0x168

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :sswitch_7
    const/16 v0, 0x64

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0x1b7

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

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

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_7
        0x10e -> :sswitch_6
        0x168 -> :sswitch_4
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

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CameraBaseIndicators$1;-><init>(Lcom/sec/android/app/camera/CameraBaseIndicators;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method


# virtual methods
.method public changeIndicatorMode(I)V
    .locals 3

    iput p1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mShootMode:I

    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mShootMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroupNormal:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiParentGroup:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiParentGroup:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mNormalGroup:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroupNormal:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroup:Landroid/widget/RelativeLayout;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraBaseIndicators;->rotateButton(IILandroid/view/View;)V

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroup:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public enableOrientation(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationEnabled:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraBaseIndicators;->rotateButton(IILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getRemainCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRemainCount:I

    return v0
.end method

.method public hideTextMessage()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onBack()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x16
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

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAutoRotation()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraBaseIndicators;->rotateButton(IILandroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->updateStorageIndicator()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setWifiDirectStatus()V

    return-void
.end method

.method public resumeOrientationListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method public setBatteryCharging()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroup:Landroid/widget/RelativeLayout;

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

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void

    :cond_0
    if-le p1, v0, :cond_1

    if-gt p1, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    :cond_1
    if-le p1, v3, :cond_2

    if-gt p1, v4, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    :cond_2
    if-le p1, v4, :cond_3

    const/16 v0, 0x27

    if-gt p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x27

    if-le p1, v0, :cond_4

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x3b

    if-le p1, v0, :cond_5

    const/16 v0, 0x4f

    if-gt p1, v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRemainCount(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRemainCount:I

    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRemainCount:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorRemainCount:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorRemainCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorRemainCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTextMessage(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setWifiDirectStatus()V
    .locals 3

    const-string v1, "#"

    const-string v2, " setWifiDirectStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiApSSID:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiApSSID:Landroid/widget/ImageView;

    const v2, 0x7f02017f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiApSSID:Landroid/widget/ImageView;

    const v2, 0x7f02017e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public showTextMessage()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected update()V
    .locals 0

    return-void
.end method

.method public updateStorageIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    return-void
.end method
