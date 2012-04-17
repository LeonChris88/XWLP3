.class public Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;
.super Landroid/widget/RelativeLayout;
.source "GlassLockScreenFMRadioWidget.java"


# static fields
.field private static final FMPLAYER_NEXT_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.tune.next"

.field private static final FMPLAYER_OFF_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.off"

.field private static final FMPLAYER_ON:I = 0x1

.field private static final FMPLAYER_ON_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.on"

.field private static final FMPLAYER_PREV_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.tune.prev"

.field private static final MUSICHUB_ON:I = 0x2

.field private static final RETURN_CHANNEL_CHANGE_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.status.channel"

.field private static final RETURN_CHANNEL_TUNE_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.tune.channel"

.field private static final RETURN_FMPLAYER_INFO:Ljava/lang/String; = "com.android.fm.player_lock.info"

.field private static final RETURN_OFF_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.status.off"

.field private static final RETURN_ON_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.status.on"

.field private static final SOUND_TOUCH_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GlassLockScreenFMRadioWidget"


# instance fields
.field private final DEBUG:Z

.field private final MSG_FMFREQ_UPDATE:I

.field private final MSG_FM_UPDATE:I

.field private final MSG_MINIRADIO_VISIBILITY_UPDATE:I

.field private final SHINK_ANIMATION_START:I

.field private final STOP_MARQUEE:I

.field private final STOP_MARQUEE_DELAY:I

.field private currentAlbumID:Ljava/lang/String;

.field private isMaxLayout:Z

.field private isTopLayout:Z

.field private mBeforeButton:Landroid/widget/ImageButton;

.field private mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentChannel:Ljava/lang/String;

.field private mCurrentFreq:Ljava/lang/String;

.field private mFFLongPressed:Z

.field private mFMAppImage:Landroid/widget/ImageView;

.field private mFMInfoTextInMax:Landroid/widget/TextView;

.field private mFMInfoTextInMin:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHeightDifference:I

.field private mIsFMPlayerPlaying:Z

.field private mIsMoving:Z

.field private mIsPlaying:Z

.field private mIsStopped:Z

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMaxFMRadio:Landroid/widget/FrameLayout;

.field private mMinFMControllerHandle:Landroid/widget/LinearLayout;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field private mREWLongPressed:Z

.field private mScreenOn:Z

.field private mServiceNumber:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVisibleLayout:Z

.field private mWasShowed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->DEBUG:Z

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mScreenOn:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsMoving:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsStopped:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mWasShowed:Z

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentChannel:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentFreq:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->currentAlbumID:Ljava/lang/String;

    const/16 v2, 0x12c1

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->SHINK_ANIMATION_START:I

    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->MSG_FM_UPDATE:I

    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->MSG_FMFREQ_UPDATE:I

    const/16 v2, 0x12c4

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->STOP_MARQUEE:I

    const/16 v2, 0x12c5

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->MSG_MINIRADIO_VISIBILITY_UPDATE:I

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->STOP_MARQUEE_DELAY:I

    iput v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mServiceNumber:I

    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900d8

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v2, 0x1020380

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.fm.player_lock.status.channel"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.fm.player_lock.tune.channel"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.fm.player_lock.status.on"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.fm.player_lock.status.off"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setFocusableInTouchMode(Z)V

    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setDescendantFocusability(I)V

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v2, :cond_0

    const-string v2, "FMPlayer"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v2}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->init()V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMinLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startTranslateAnimation(III)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMaxLayout(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mServiceNumber:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mServiceNumber:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->resetMinTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    return v0
.end method

.method private addMinTimer()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12c1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private generateTitleText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const v3, 0x104061e

    const-string v0, ""

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const v1, 0x1020385

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    const v1, 0x102038a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    const v1, 0x1020381

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    const v1, 0x1020383

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    const v1, 0x1020382

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    const v1, 0x1020384

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMAppImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$3;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    const v1, 0x1020389

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mNextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$5;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x1020387

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBeforeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$6;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x1020388

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$7;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$7;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player_lock.info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "lockscreen"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->resetMinTimer()V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    return-void
.end method

.method private removeMinTimer()V
    .locals 2

    const/16 v1, 0x12c1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private resetMinTimer()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->removeMinTimer()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->addMinTimer()V

    return-void
.end method

.method private setMaxLayout(I)V
    .locals 5

    const/16 v4, 0x190

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsMoving:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startTranslateAnimation(III)V

    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->resetMinTimer()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startTranslateAnimation(III)V

    goto :goto_1
.end method

.method private setMinLayout()V
    .locals 4

    const/16 v3, 0xc8

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsMoving:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startTranslateAnimation(III)V

    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startTranslateAnimation(III)V

    goto :goto_1
.end method

.method private startTranslateAnimation(III)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsMoving:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->stopMarguee()V

    return-void
.end method

.method public getIsFMPlayerPlaying()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mContext:Landroid/content/Context;

    const-string v2, "FMPlayer"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    goto :goto_0
.end method

.method protected handleFMUpdate(IILjava/lang/Object;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "GlassLockScreenFMRadioWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMediaUpdate !! isPlaying = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isStop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsFMPlayerPlaying = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-ne p2, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsStopped:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    if-nez v1, :cond_3

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    :goto_2
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v2, 0x1080723

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMAppImage:Landroid/widget/ImageView;

    const v2, 0x10803ed

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v2, 0x1080722

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const-string v1, ""

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->generateTitleText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_3
.end method

.method protected handleFMUpdate(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentChannel:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentFreq:Ljava/lang/String;

    if-ne p1, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-ne p2, v1, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsStopped:Z

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    if-nez v0, :cond_4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080723

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_3
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->updateFMPlayer(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMAppImage:Landroid/widget/ImageView;

    const v1, 0x10803ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080722

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method protected handleMiniRadioVisibilityUpdate(IILjava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    :cond_0
    return-void
.end method

.method public handleStopMarquee()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public isControllerShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startControllerAnimation()V

    :cond_0
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    :cond_1
    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->stopMarguee()V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentFreq:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentChannel:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->generateTitleText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.player_lock.info"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    neg-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMaxLayout(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMaxLayout(I)V

    goto :goto_1
.end method

.method public sendBroadcastAfterBooting(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setBottomLayout()V
    .locals 4

    const/16 v3, 0x50

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    const v2, 0x1080711

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setControllerVisibility(ZZ)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsMoving:Z

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mWasShowed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->addMinTimer()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mWasShowed:Z

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->removeMinTimer()V

    goto :goto_1
.end method

.method public setScreenOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mScreenOn:Z

    return-void
.end method

.method public setScreenOn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mScreenOn:Z

    return-void
.end method

.method public setTopLayout()V
    .locals 4

    const/16 v3, 0x30

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    const v2, 0x1080712

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public startControllerAnimation()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->removeMinTimer()V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMinLayout()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMaxLayout(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMaxLayout(I)V

    goto :goto_0
.end method

.method public stopMarguee()V
    .locals 4

    const/16 v2, 0x12c4

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public updateFMPlayer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->generateTitleText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMAppImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method
