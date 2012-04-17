.class public Lcom/sec/android/app/camera/CamcorderRecordingMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CamcorderRecordingMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final INDICATOR_TRANSLATE_X:I = 0x78

.field private static final INDICATOR_TRANSLATE_Y:I = 0x78

.field private static final MAX_RECORDING_TIME:I = 0x1517f

.field private static final MMS_LAYOUT_TRANSLATE_X:I = -0x50

.field private static final MMS_LAYOUT_TRANSLATE_Y:I = 0x0

.field private static final PROGRESSBAR_MAX:I = 0x64

.field public static final RECORDING_MENU_CANCEL:I = 0x4

.field public static final RECORDING_MENU_PAUSE:I = 0x1

.field public static final RECORDING_MENU_RESUME:I = 0x3

.field public static final RECORDING_MENU_STOP:I = 0x2

.field public static final RECORDING_TIMER_STEP_MSG:I = 0x1

.field private static final RECSIZE_TRANSLATE_X:I = -0x78

.field private static final RECSIZE_TRANSLATE_Y:I = 0x78

.field private static final SECONDS_IN_AN_HOUR:I = 0xe10

.field private static final SECONDS_IN_A_DAY:I = 0x15180

.field private static final SECONDS_IN_A_MINUTE:I = 0x3c


# instance fields
.field private final MAX_MMS_SIZE:J

.field private final MAX_MMS_SIZE_KOR:J

.field private isMMSMode:Z

.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mBackButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

.field private mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

.field private mHMS:Ljava/lang/String;

.field private mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mIndicatorGroup:Landroid/widget/RelativeLayout;

.field public mLastOrientation:I

.field private mMMSLayout:Landroid/widget/RelativeLayout;

.field private mOrientationEnabled:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRecCurSizeLayout:Landroid/widget/RelativeLayout;

.field private mRecIcon:Landroid/widget/ImageView;

.field private final mRecImageId:I

.field private mRecMMSSizeText:Landroid/widget/TextView;

.field private mRecMaxSize:Landroid/widget/TextView;

.field private mRecSizeText:Landroid/widget/TextView;

.field private mRecTimeText:Landroid/widget/TextView;

.field private mRecordingProgressHandler:Landroid/os/Handler;

.field private mRecordingState:I

.field private mRecordingTime:I

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mStopping:Z

.field private mTranslateAnimation:Landroid/view/animation/TranslateAnimation;


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

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    const-wide/32 v0, 0x49c00

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->MAX_MMS_SIZE:J

    const-wide/32 v0, 0xed800

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->MAX_MMS_SIZE_KOR:J

    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    iput v7, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    const v0, 0x7f020186

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecImageId:I

    iput-boolean v7, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    iput-boolean v7, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationEnabled:Z

    new-instance v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu$1;-><init>(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    iput v7, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLastOrientation:I

    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CamcorderRecordingMenu;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CamcorderRecordingMenu;IILandroid/view/View;ZZII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->rotateButton(IILandroid/view/View;ZZII)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecCurSizeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private disableButtons()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDim(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    return-void
.end method

.method private doStop()V
    .locals 3

    const/4 v2, 0x2

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->hideIndicatorGroup()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->disableButtons()V

    iput v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    goto :goto_0
.end method

.method private enableButtons()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDim(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

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

    iput-object v6, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

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

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecCurSizeLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const v1, 0x7f020186

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->hmsConvert(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080056

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMMSSizeText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMaxSize:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f080046

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->setSurfaceView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->setOrientationListener()V

    return-void
.end method

.method private rotateButton(IILandroid/view/View;ZZII)V
    .locals 8

    const/16 v2, 0x10e

    const/high16 v1, 0x3f80

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    const/4 v7, 0x0

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLastOrientation:I

    if-ne v0, v2, :cond_8

    const/16 p1, 0x168

    :cond_1
    :goto_1
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLastOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    rsub-int v2, p1, 0x168

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    if-eqz p4, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

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

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

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
    if-eqz p5, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    :cond_4
    if-eqz p4, :cond_5

    if-eqz p5, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    :cond_5
    if-eqz p5, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p4, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_8
    if-ne p1, v2, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLastOrientation:I

    if-nez v0, :cond_1

    const/16 v0, 0x168

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLastOrientation:I

    goto/16 :goto_1

    :sswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v1, p6

    int-to-float v1, v1

    int-to-float v2, p7

    invoke-direct {v0, v7, v1, v7, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    :sswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p6

    neg-int v2, p7

    int-to-float v2, v2

    invoke-direct {v0, v7, v1, v7, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    :sswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v7, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    :sswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v7, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

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

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;-><init>(Lcom/sec/android/app/camera/CamcorderRecordingMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method private unlockButtons()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_2
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMMSSizeText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMaxSize:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBackButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecCurSizeLayout:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public getRecordingState()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    return v0
.end method

.method public getRecordingTime()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    return v0
.end method

.method public hideIndicatorGroup()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doStop()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080055
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onHide()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->IsShutterButtonHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->ShutterButtonIsRestored()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->unlockButtons()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    if-ge v0, v1, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->hideIndicatorGroup()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->disableButtons()V

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onShow()V
    .locals 5

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuideLineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v0

    if-ne v0, v4, :cond_1

    iput-boolean v4, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMMSSizeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMaxSize:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const v1, 0x7f020186

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->enableButtons()V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->showShutterButton()V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMMSSizeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMaxSize:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public pauseTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public setBatteryCharging()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;

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

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void

    :cond_0
    if-le p1, v0, :cond_1

    if-gt p1, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    :cond_1
    if-le p1, v3, :cond_2

    if-gt p1, v4, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    :cond_2
    if-le p1, v4, :cond_3

    const/16 v0, 0x27

    if-gt p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x27

    if-le p1, v0, :cond_4

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x3b

    if-le p1, v0, :cond_5

    const/16 v0, 0x4f

    if-gt p1, v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_0
.end method

.method public startTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->hmsConvert(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stepSecond()V

    return-void
.end method

.method public stepSecond()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingTimerElapsed()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public stopTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    return-void
.end method

.method public updateProgressBarText(J)V
    .locals 7

    const-wide/32 v5, 0x49c00

    const-wide/16 v3, 0x400

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-wide/16 v1, 0x64

    mul-long/2addr v1, p1

    div-long/2addr v1, v5

    long-to-int v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    cmp-long v1, p1, v5

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->onClick(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecMMSSizeText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAvailableStorage()J

    move-result-wide v3

    const-wide/32 v5, 0x500000

    add-long/2addr v3, v5

    const-wide/32 v5, 0x100000

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateRecImage()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopLightButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopDarkButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateRecordingTime(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->hmsConvert(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mIndicatorGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
