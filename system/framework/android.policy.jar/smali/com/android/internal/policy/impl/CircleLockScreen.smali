.class public Lcom/android/internal/policy/impl/CircleLockScreen;
.super Landroid/widget/FrameLayout;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# instance fields
.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

.field private mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

.field private mComponentBox:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mHelpText:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

.field private mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

.field private mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mShadowImage:Landroid/widget/ImageView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v5, "CircleLockScreen"

    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object p3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p2, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCreationOrientation:I

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-direct {v1, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentLockScreenString() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x10202b6

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/CircleLockScreen;->setFocusable(Z)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/CircleLockScreen;->setFocusableInTouchMode(Z)V

    const/high16 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/CircleLockScreen;->setDescendantFocusability(I)V

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-direct {v5, p1, p5}, Lcom/android/internal/policy/impl/CircleUnlockView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    new-instance v6, Lcom/android/internal/policy/impl/CircleLockScreen$1;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/CircleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/CircleUnlockView;->setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;)V

    new-instance v5, Lcom/android/internal/policy/impl/ClockWidget;

    invoke-direct {v5, p1, p4, p2}, Lcom/android/internal/policy/impl/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    new-instance v5, Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-direct {v5, v6, v7, p5}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    new-instance v5, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p5, p4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    new-instance v5, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-direct {v5, p1, p5, p4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setTopLayout()V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const v6, 0x108072b

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    const v6, 0x106000c

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    const/16 v6, 0xb2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const v6, 0x10405f6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    const/high16 v9, -0x100

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const v6, -0x141415

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v6, 0x2

    const/high16 v7, 0x41a8

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/high16 v7, 0x4160

    mul-float/2addr v7, v2

    float-to-int v7, v7

    const/4 v8, 0x0

    const/high16 v9, 0x4160

    mul-float/2addr v9, v2

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen;->setComponentLayout(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/CircleLockScreen;->addView(Landroid/view/View;)V

    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    return-void

    :cond_1
    const/16 v5, 0x8

    :try_start_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MDM Exception Statement :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V

    return-void
.end method

.method private bedimBackground(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setComponentLayout(Landroid/content/Context;)V
    .locals 11

    const/4 v6, 0x2

    const/4 v10, 0x0

    const/high16 v9, 0x3f80

    const/4 v8, -0x2

    const/4 v7, -0x1

    iget v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCreationOrientation:I

    if-eq v4, v6, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "clock_position"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clock position from setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const v5, 0x108072b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v4, v10}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setMiddleLayout(Z)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setBottomLayout()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setBottomLayout()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getIsFMPlayerPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const v5, 0x108072c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setTopLayout()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getIsFMPlayerPlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setMiddleLayout(Z)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const v5, 0x108072a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setTopLayout()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getIsFMPlayerPlaying()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v4, v10}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setMiddleLayout(Z)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_2

    :cond_4
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->cleanUp()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->cleanUp()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->cleanUp()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->cleanUp()V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5

    const/16 v4, 0x1f4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/ClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    invoke-interface {v0, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->onPause()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->onPause()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onPause()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->onPause()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->onPause()V

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/ClockWidget;->refreshBatteryInfo(ZZI)V

    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/ClockWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->onResume()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->onResume()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onResume()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->onResume()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->onResume()V

    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/ClockWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setScreenOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setScreenOff()V

    return-void
.end method

.method public setScreenOn()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setScreenOn()V

    return-void
.end method
