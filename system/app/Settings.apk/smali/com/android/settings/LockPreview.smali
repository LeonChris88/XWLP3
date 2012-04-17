.class public Lcom/android/settings/LockPreview;
.super Landroid/app/Activity;
.source "LockPreview.java"


# instance fields
.field private final WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private mAnimate:Z

.field private mBoxLayout:Landroid/widget/LinearLayout;

.field private mClockLayout:Landroid/widget/RelativeLayout;

.field private mClockPanel:Lcom/android/settings/ClockPanel;

.field private mHandler:Landroid/os/Handler;

.field private mMainLayout:Landroid/widget/FrameLayout;

.field private mMaxHeight:F

.field private final mStartLockAnimation:Ljava/lang/Runnable;

.field private mTimeTick_Layout_Refresh:Z

.field private mTransAnimation:Landroid/view/animation/TranslateAnimation;

.field private mX:F

.field private mY:F

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/settings/LockPreview;->WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    iput-boolean v2, p0, Lcom/android/settings/LockPreview;->mAnimate:Z

    iput-boolean v2, p0, Lcom/android/settings/LockPreview;->mTimeTick_Layout_Refresh:Z

    iput v1, p0, Lcom/android/settings/LockPreview;->mX:F

    iput v1, p0, Lcom/android/settings/LockPreview;->mY:F

    new-instance v0, Lcom/android/settings/LockPreview$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LockPreview$1;-><init>(Lcom/android/settings/LockPreview;)V

    iput-object v0, p0, Lcom/android/settings/LockPreview;->mStartLockAnimation:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LockPreview;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LockPreview;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/LockPreview;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/LockPreview;->position:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f040050

    invoke-virtual {p0, v5}, Lcom/android/settings/LockPreview;->setContentView(I)V

    const v5, 0x7f0800e6

    invoke-virtual {p0, v5}, Lcom/android/settings/LockPreview;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/settings/LockPreview;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/LockPreview;->setLockScreenWallpaper()V

    const v5, 0x7f0800e7

    invoke-virtual {p0, v5}, Lcom/android/settings/LockPreview;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f0800e8

    invoke-virtual {p0, v5}, Lcom/android/settings/LockPreview;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/LockPreview;->mBoxLayout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/settings/ClockPanel;

    invoke-direct {v5, p0}, Lcom/android/settings/ClockPanel;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    invoke-virtual {v5, v9}, Lcom/android/settings/ClockPanel;->setVisibility(I)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    invoke-virtual {v5, v4}, Lcom/android/settings/ClockPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/settings/LockPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "clock_position"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Lcom/android/settings/ClockPanel;->setGravity(I)V

    iput v9, p0, Lcom/android/settings/LockPreview;->position:I

    :goto_0
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/settings/LockPreview;->mHandler:Landroid/os/Handler;

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x41a0

    const/high16 v7, -0x3e60

    invoke-direct {v5, v10, v6, v10, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v5, v8}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v5, v8}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v5, v9}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const v5, 0x7f0800e9

    invoke-virtual {p0, v5}, Lcom/android/settings/LockPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/LockPreview$2;

    invoke-direct {v5, p0}, Lcom/android/settings/LockPreview$2;-><init>(Lcom/android/settings/LockPreview;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0800ea

    invoke-virtual {p0, v5}, Lcom/android/settings/LockPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/LockPreview$3;

    invoke-direct {v5, p0}, Lcom/android/settings/LockPreview$3;-><init>(Lcom/android/settings/LockPreview;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "clock_position"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_1

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/android/settings/ClockPanel;->setGravity(I)V

    iput v8, p0, Lcom/android/settings/LockPreview;->position:I

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Lcom/android/settings/ClockPanel;->setGravity(I)V

    iput v7, p0, Lcom/android/settings/LockPreview;->position:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/high16 v12, 0x41a0

    const/4 v11, 0x0

    const/high16 v10, 0x4040

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/settings/LockPreview;->mMaxHeight:F

    const-string v5, "LockPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " y : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMaxHeight /3 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/LockPreview;->mMaxHeight:F

    div-float/2addr v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    :pswitch_0
    iput-boolean v9, p0, Lcom/android/settings/LockPreview;->mTimeTick_Layout_Refresh:Z

    iget-boolean v5, p0, Lcom/android/settings/LockPreview;->mAnimate:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/LockPreview;->mStartLockAnimation:Ljava/lang/Runnable;

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v9, p0, Lcom/android/settings/LockPreview;->mAnimate:Z

    :cond_1
    iput v3, p0, Lcom/android/settings/LockPreview;->mX:F

    iput v4, p0, Lcom/android/settings/LockPreview;->mY:F

    goto :goto_0

    :pswitch_1
    iput-boolean v8, p0, Lcom/android/settings/LockPreview;->mTimeTick_Layout_Refresh:Z

    iget-boolean v5, p0, Lcom/android/settings/LockPreview;->mAnimate:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/LockPreview;->mStartLockAnimation:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v5, v8}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iput-boolean v8, p0, Lcom/android/settings/LockPreview;->mAnimate:Z

    :cond_2
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/settings/LockPreview;->mX:F

    sub-float v5, v3, v5

    add-float/2addr v5, v12

    float-to-int v1, v5

    iget v5, p0, Lcom/android/settings/LockPreview;->mY:F

    sub-float v5, v4, v5

    sub-float/2addr v5, v12

    float-to-int v2, v5

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v1, v2, v6, v7}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_0

    :pswitch_2
    const-string v5, "LockPreview"

    const-string v6, "ACTION_UP()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_3
    iput v11, p0, Lcom/android/settings/LockPreview;->mX:F

    iput v11, p0, Lcom/android/settings/LockPreview;->mY:F

    iput-boolean v8, p0, Lcom/android/settings/LockPreview;->mTimeTick_Layout_Refresh:Z

    iget-boolean v5, p0, Lcom/android/settings/LockPreview;->mAnimate:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/LockPreview;->mStartLockAnimation:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v5, v9}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iput-boolean v8, p0, Lcom/android/settings/LockPreview;->mAnimate:Z

    :cond_3
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/widget/RelativeLayout;->layout(IIII)V

    :cond_4
    iget v5, p0, Lcom/android/settings/LockPreview;->mMaxHeight:F

    div-float/2addr v5, v10

    cmpl-float v5, v5, v4

    if-lez v5, :cond_5

    iput v8, p0, Lcom/android/settings/LockPreview;->position:I

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Lcom/android/settings/ClockPanel;->setGravity(I)V

    goto/16 :goto_0

    :cond_5
    iget v5, p0, Lcom/android/settings/LockPreview;->mMaxHeight:F

    div-float/2addr v5, v10

    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    cmpl-float v5, v5, v4

    if-lez v5, :cond_6

    iput v9, p0, Lcom/android/settings/LockPreview;->position:I

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/android/settings/ClockPanel;->setGravity(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/settings/LockPreview;->position:I

    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Lcom/android/settings/ClockPanel;->setGravity(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setLockScreenWallpaper()V
    .locals 7

    const v6, 0x1080223

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/LockPreview;->mMainLayout:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/settings/LockPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/settings/LockPreview;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/LockPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/LockPreview;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/LockPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
