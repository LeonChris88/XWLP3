.class public Lcom/sec/android/app/camera/AdjustMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "AdjustMenu.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/AdjustMenu$LongTouchEventHandler;,
        Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessMenuSelectListener;,
        Lcom/sec/android/app/camera/AdjustMenu$OnSaturationMenuSelectListener;,
        Lcom/sec/android/app/camera/AdjustMenu$OnContrastMenuSelectListener;
    }
.end annotation


# static fields
.field private static final DELAY:J = 0x64L

.field private static final LONG_PRESSED:I = 0x1

.field private static final SEEK_DELTA:I = 0x2


# instance fields
.field private mContrastSeekBar:Landroid/widget/SeekBar;

.field mContrastSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mContrastTextview:Landroid/widget/TextView;

.field private mContrastValue:I

.field private final mHandler:Landroid/os/Handler;

.field private mLongtouch:Z

.field protected mOnContrastChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnContrastMenuSelectListener;

.field protected mOnSaturationChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSaturationMenuSelectListener;

.field protected mOnSharpnessChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessMenuSelectListener;

.field private mSaturationSeekBar:Landroid/widget/SeekBar;

.field mSaturationSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSaturationTextview:Landroid/widget/TextView;

.field private mSaturationValue:I

.field private mSelectedView:Landroid/view/View;

.field private mSharpnessSeekBar:Landroid/widget/SeekBar;

.field mSharpnessSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSharpnessTextview:Landroid/widget/TextView;

.field private mSharpnessValue:I

.field private mTempContrastValue:I

.field private mTempSaturationValue:I

.field private mTempSharpnessValue:I

.field private popTextLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationTextview:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessTextview:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->popTextLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSelectedView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mLongtouch:Z

    new-instance v0, Lcom/sec/android/app/camera/AdjustMenu$LongTouchEventHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/AdjustMenu$LongTouchEventHandler;-><init>(Lcom/sec/android/app/camera/AdjustMenu;Lcom/sec/android/app/camera/AdjustMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/AdjustMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AdjustMenu$1;-><init>(Lcom/sec/android/app/camera/AdjustMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/sec/android/app/camera/AdjustMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AdjustMenu$2;-><init>(Lcom/sec/android/app/camera/AdjustMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/sec/android/app/camera/AdjustMenu$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AdjustMenu$3;-><init>(Lcom/sec/android/app/camera/AdjustMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-direct {p0}, Lcom/sec/android/app/camera/AdjustMenu;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationTextview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/AdjustMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/AdjustMenu;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessTextview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/AdjustMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/AdjustMenu;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/AdjustMenu;Landroid/widget/SeekBar;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/AdjustMenu;Landroid/widget/SeekBar;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/AdjustMenu;->updatePopupText(Landroid/widget/SeekBar;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->popTextLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/AdjustMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/AdjustMenu;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    return p1
.end method

.method private init()V
    .locals 0

    return-void
.end method

.method private setSeekBarValue(Landroid/widget/SeekBar;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private updatePopupText(Landroid/widget/SeekBar;I)V
    .locals 0

    return-void
.end method

.method private updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    div-int v2, v4, v5

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/lit8 v5, p3, 0x2

    mul-int/2addr v5, v2

    add-int v0, v4, v5

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v0, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected onHide()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeContrastPreview(I)V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSaturationPreview(I)V

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSharpnessPreview(I)V

    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

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

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeContrastPreview(I)V

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSaturationPreview(I)V

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSharpnessPreview(I)V

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

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

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AdjustMenu;->setLongTouch(Z)V

    iput-object p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSelectedView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v3
.end method

.method protected onShow()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AdjustMenu;->setSavedAdjust()V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mLongtouch:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/AdjustMenu;->onClick(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setLongTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public setLongTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mLongtouch:Z

    return-void
.end method

.method public setOnContrastChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnContrastMenuSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnContrastChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnContrastMenuSelectListener;

    return-void
.end method

.method public setOnSaturationChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnSaturationMenuSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnSaturationChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSaturationMenuSelectListener;

    return-void
.end method

.method public setOnSharpnessChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessMenuSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnSharpnessChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessMenuSelectListener;

    return-void
.end method

.method protected setSavedAdjust()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraContrast()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSaturation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSharpness()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    add-int/lit8 v2, v2, -0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    add-int/lit8 v2, v2, -0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    add-int/lit8 v2, v2, -0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderContrast()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSaturation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSharpness()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    goto :goto_0
.end method
