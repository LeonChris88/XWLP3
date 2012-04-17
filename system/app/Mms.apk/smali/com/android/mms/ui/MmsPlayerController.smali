.class public Lcom/android/mms/ui/MmsPlayerController;
.super Landroid/widget/FrameLayout;
.source "MmsPlayerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDecor:Landroid/view/View;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mHandler:Landroid/os/Handler;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mNextPageButton:Landroid/widget/ImageButton;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mPrevPageButton:Landroid/widget/ImageButton;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRoot:Landroid/view/View;

.field private mShowing:Z

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$1;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$2;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$3;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$4;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$5;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->initFloatingWindow()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$1;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$2;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$3;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$4;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$5;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextListener:Landroid/view/View$OnClickListener;

    iput-object p0, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$1;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$2;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$3;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$4;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$5;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->initFloatingWindow()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsPlayerController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsPlayerController;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsPlayerController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mDragging:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsPlayerController;)Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsPlayerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->doPauseResume()V

    return-void
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doPauseResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->pause()V

    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->updatePausePlay()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->start()V

    goto :goto_0
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const v1, 0x7f08007b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v1, 0x7f08007a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v1, 0x7f08007c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const v1, 0x7f08007d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setFocusable(Z)V

    :cond_3
    const v1, 0x7f08007f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    const v1, 0x7f08007e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mCurrentTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mCurrentTime:Landroid/widget/TextView;

    const v2, -0xb810b9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method private initFloatingWindow()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mDecor:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mDecor:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsPlayerController;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsPlayerController;->setFocusableInTouchMode(Z)V

    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerController;->requestFocus()Z

    return-void
.end method

.method private setProgress()I
    .locals 8

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mDragging:Z

    if-eqz v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v4}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->getCurrentPosition()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v4}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->getDuration()I

    move-result v0

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_3

    if-lez v0, :cond_3

    const-wide/16 v4, 0x3e8

    int-to-long v6, v3

    mul-long/2addr v4, v6

    int-to-long v6, v0

    div-long v1, v4, v6

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    long-to-int v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsPlayerController;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    div-int/lit16 v3, p1, 0x3e8

    rem-int/lit8 v2, v3, 0x3c

    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    div-int/lit16 v0, v3, 0xe10

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lez v0, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updatePausePlay()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isStartAction()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020108

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09023f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020109

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    const/16 v5, 0xbb8

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const-string v2, "Mms/MmsPlayerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchKeyEvent(),keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x4f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x55

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->doPauseResume()V

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsPlayerController;->show(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/16 v2, 0x56

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->pause()V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->updatePausePlay()V

    goto :goto_0

    :cond_3
    const/16 v2, 0x19

    if-eq v0, v2, :cond_4

    const/16 v2, 0x18

    if-ne v0, v2, :cond_5

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    const/16 v2, 0x52

    if-ne v0, v2, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerController;->hide()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsPlayerController;->show(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public doNextPage()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->next()V

    invoke-static {}, Lcom/android/mms/ui/SlideshowActivity;->getStaticPresenter()Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->initAttachmentListView_presenter()V

    return-void
.end method

.method public doPrevPage()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->prev()V

    invoke-static {}, Lcom/android/mms/ui/SlideshowActivity;->getStaticPresenter()Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->initAttachmentListView_presenter()V

    return-void
.end method

.method public hide()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "Mms/MmsPlayerController"

    const-string v2, "hide()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setPressed(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setPressed(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setPressed(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-boolean v3, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MmsPlayerController;->initControllerView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->initControllerView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->show(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->show(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerController;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/MmsPlayerController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsPlayerController;->setStatePauseButton(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->disableUnsupportedButtons()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method public setMediaPlayer(Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->updatePausePlay()V

    return-void
.end method

.method public setPageMoveButton(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsPlayerController;->setStatePrevButton(Z)V

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsPlayerController;->setStateNextButton(Z)V

    return-void
.end method

.method public setStateNextButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setStatePauseButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setStatePrevButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->show(I)V

    return-void
.end method

.method public show(I)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "Mms/MmsPlayerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show(),timeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->setProgress()I

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->disableUnsupportedButtons()V

    new-array v0, v9, [I

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    :try_start_0
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v4, 0x30

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v4, 0x1

    aget v4, v0, v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v4, 0x3e8

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x2

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/mms/ui/MmsPlayerController;->mDecor:Landroid/view/View;

    invoke-interface {v4, v5, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->updatePausePlay()V

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    int-to-long v5, p1

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    :catch_0
    move-exception v1

    const-string v4, "Mms/MmsPlayerController"

    const-string v5, "catch BadTokenException - MmsPlayerController.show()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z

    goto :goto_0
.end method

.method public updateToPlayButton()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020109

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
