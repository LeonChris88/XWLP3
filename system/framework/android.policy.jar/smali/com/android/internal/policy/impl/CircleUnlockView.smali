.class public Lcom/android/internal/policy/impl/CircleUnlockView;
.super Landroid/widget/FrameLayout;
.source "CircleUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;,
        Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;
    }
.end annotation


# instance fields
.field private final ALPHA_ANI_DURATION:J

.field private final ALPHA_ANI_END:F

.field private final ALPHA_ANI_START:F

.field private final ARROW_REPEAT_ANI_DURATION:I

.field private final ARROW_REPEAT_ANI_OFFSET:I

.field private final ARROW_SCALE_ANI_END:F

.field private final ARROW_SCALE_ANI_START:F

.field private final ARROW_START_ANI_DURATION:I

.field private final ARROW_START_ANI_OFFSET:I

.field private final CIRCLE_MAX_ALPHA:I

.field private final CIRCLE_MIN_ALPHA:I

.field private DBG:Z

.field private final SCALE_ANI_DURATION:J

.field private final SCALE_ANI_END:F

.field private final SCALE_ANI_START:F

.field private TAG:Ljava/lang/String;

.field private final UNLOCK_DRAG_THRESHOLD:D

.field private final UNLOCK_RELEASE_THRESHOLD:D

.field private alphaAnim:Landroid/view/animation/AlphaAnimation;

.field private arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

.field private arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

.field private arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

.field private arrowStartAlphaAnim1:Landroid/view/animation/AlphaAnimation;

.field private arrowStartAlphaAnim2:Landroid/view/animation/AlphaAnimation;

.field private arrowStartAlphaAnim3:Landroid/view/animation/AlphaAnimation;

.field private arrowStartAnim1:Landroid/view/animation/AnimationSet;

.field private arrowStartAnim2:Landroid/view/animation/AnimationSet;

.field private arrowStartAnim3:Landroid/view/animation/AnimationSet;

.field private arrowStartScaleAnim1:Landroid/view/animation/ScaleAnimation;

.field private arrowStartScaleAnim2:Landroid/view/animation/ScaleAnimation;

.field private arrowStartScaleAnim3:Landroid/view/animation/ScaleAnimation;

.field private circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

.field private circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleAniFlag:Z

.field private mCircleArrow1:Landroid/widget/ImageView;

.field private mCircleArrow1_1:Landroid/widget/ImageView;

.field private mCircleArrow2:Landroid/widget/ImageView;

.field private mCircleArrow2_1:Landroid/widget/ImageView;

.field private mCircleArrow3:Landroid/widget/ImageView;

.field private mCircleArrow3_1:Landroid/widget/ImageView;

.field private mCircleCenter:Landroid/widget/ImageView;

.field private mCircleIn:Landroid/widget/ImageView;

.field private mCircleMain:Landroid/widget/FrameLayout;

.field private mCircleOut:Landroid/widget/ImageView;

.field private mCircleRoot:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDistanceRatio:D

.field private mIsFirst:Z

.field private mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

.field private mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

.field private mOutCircleAnimationSet:Landroid/view/animation/AnimationSet;

.field private mX:F

.field private mY:F

.field private originalCircleX:F

.field private originalCircleY:F

.field private scaleAnim:Landroid/view/animation/ScaleAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 5

    const/16 v4, 0x96

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "CircleLockScreen"

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->DBG:Z

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->CIRCLE_MAX_ALPHA:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->CIRCLE_MIN_ALPHA:I

    const-wide/16 v0, 0x352

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ALPHA_ANI_DURATION:J

    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ALPHA_ANI_START:F

    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ALPHA_ANI_END:F

    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->SCALE_ANI_DURATION:J

    const v0, 0x3edc28f6

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->SCALE_ANI_START:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->SCALE_ANI_END:F

    const v0, 0x3f8ccccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_SCALE_ANI_START:F

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_SCALE_ANI_END:F

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_START_ANI_DURATION:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_START_ANI_OFFSET:I

    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_REPEAT_ANI_DURATION:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_REPEAT_ANI_OFFSET:I

    const-wide v0, 0x3fe99999a0000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide v0, 0x3ff4ccccc0000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleAniFlag:Z

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->setLayout()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->setAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method private circleUnlockAnimation(D)V
    .locals 12

    const/16 v11, 0xff

    const/4 v10, 0x4

    const/4 v5, 0x0

    const-wide v8, 0x3fe99999a0000000L

    const-wide v6, 0x3fc999999999999aL

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "circleUnlockAnimation value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-double v2, p1, v6

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleAniFlag:Z

    if-eqz v2, :cond_0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleAniFlag:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpl-double v2, p1, v6

    if-lez v2, :cond_2

    cmpg-double v2, p1, v8

    if-gez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleAniFlag:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->clearAllAnimation()V

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/CircleUnlockView;->setAllCircleArrowVisibility(I)V

    const-wide v2, 0x4058fffff7aaaaadL

    sub-double v4, p1, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044

    add-double/2addr v2, v4

    double-to-int v1, v2

    const-wide v2, -0x3f9b2aaab19c71c5L

    sub-double v4, p1, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    add-double/2addr v2, v4

    double-to-int v0, v2

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    mul-int/lit16 v3, v0, 0xff

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    mul-int/lit16 v3, v1, 0xff

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0

    :cond_2
    cmpl-double v2, p1, v8

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->clearAllAnimation()V

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/CircleUnlockView;->setAllCircleArrowVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0
.end method

.method private getUnlockscreenLockImageIdAt(D)I
    .locals 5

    const/16 v2, 0x14

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    const-wide v2, 0x3fb999999999999aL

    cmpg-double v2, p1, v2

    if-gez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v2, v1, v0

    return v2

    :cond_0
    const-wide v2, 0x3ff0cccccccccccdL

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_1

    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    array-length v2, v1

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int v2, v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :array_0
    .array-data 0x4
        0x32t 0x7t 0x8t 0x1t
        0x33t 0x7t 0x8t 0x1t
        0x34t 0x7t 0x8t 0x1t
        0x35t 0x7t 0x8t 0x1t
        0x36t 0x7t 0x8t 0x1t
        0x37t 0x7t 0x8t 0x1t
        0x38t 0x7t 0x8t 0x1t
        0x39t 0x7t 0x8t 0x1t
        0x3at 0x7t 0x8t 0x1t
        0x3bt 0x7t 0x8t 0x1t
        0x3ct 0x7t 0x8t 0x1t
        0x3dt 0x7t 0x8t 0x1t
        0x3et 0x7t 0x8t 0x1t
        0x3ft 0x7t 0x8t 0x1t
        0x40t 0x7t 0x8t 0x1t
        0x41t 0x7t 0x8t 0x1t
        0x42t 0x7t 0x8t 0x1t
        0x43t 0x7t 0x8t 0x1t
        0x44t 0x7t 0x8t 0x1t
        0x45t 0x7t 0x8t 0x1t
    .end array-data
.end method

.method private setCenterImage(Landroid/view/View;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->setCenterImage(Landroid/view/View;D)V

    return-void
.end method

.method private setCenterImage(Landroid/view/View;D)V
    .locals 3

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/CircleUnlockView;->getUnlockscreenLockImageIdAt(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public clearAllAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "handleTouchEvent() in CircleUnlockView event = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "Occured Divided by zero Exception caused by mCircleMain-Null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    :goto_0
    return v22

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v22

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "Occured Divided by zero Exception caused by mCircleMain.getHeight() == 0"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v22

    if-nez v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "Occured Divided by zero Exception caused by mCircleMain.getWidth() == 0"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    :cond_3
    :goto_1
    const/16 v22, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;->onCircleTouchDown(Landroid/view/View;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->clearAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mX:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mY:F

    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleX:F

    move/from16 v22, v0

    sub-float v22, v22, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleY:F

    move/from16 v22, v0

    sub-float v22, v22, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/CircleUnlockView;->setCenterImage(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v15, v22, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v4, v22, v21

    move/from16 v0, v20

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v15, v11, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move/from16 v0, v21

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v4, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockAnimation(D)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOutCircleAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;->onCircleTouchMove(Landroid/view/View;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    div-int/lit8 v12, v22, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    div-int/lit8 v13, v22, 0x2

    int-to-float v0, v12

    move/from16 v22, v0

    sub-float v22, v18, v22

    move/from16 v0, v22

    float-to-int v5, v0

    int-to-float v0, v13

    move/from16 v22, v0

    sub-float v22, v19, v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v23

    mul-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v23

    div-int v6, v22, v23

    :goto_3
    int-to-double v0, v5

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    int-to-double v0, v6

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v9, v22, v24

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v14

    :goto_4
    div-int/lit8 v22, v14, 0x2

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v22, v7, v16

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->DBG:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onTouchEvent() : threshold="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", distance="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", distanceRatio ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockAnimation(D)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/CircleUnlockView;->setCenterImage(Landroid/view/View;D)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff4ccccc0000000L

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_3

    if-nez p1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mX:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    move/from16 v0, v22

    float-to-int v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mY:F

    move/from16 v22, v0

    sub-float v22, v19, v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v23

    mul-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v23

    div-int v6, v22, v23

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v14

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->clearAllAnimation()V

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->setAllCircleArrowVisibility(I)V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;->onCircleTouchUp(Landroid/view/View;)V

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->DBG:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onTouchEvent(ACTION_UP) : distanceRatio ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-wide v22, 0x3fe99999a0000000L

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v24, v0

    cmpg-double v22, v22, v24

    if-gtz v22, :cond_f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff4ccccc0000000L

    cmpg-double v22, v22, v24

    if-gez v22, :cond_f

    if-nez p1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleY:F

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    return-void
.end method

.method public setAllCircleArrowVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setAnimation()V
    .locals 9

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3edc28f6

    const/high16 v2, 0x3f80

    const v3, 0x3edc28f6

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->scaleAnim:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->scaleAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->scaleAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ecccccd

    const v2, 0x3ecccccd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x352

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$1;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOutCircleAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOutCircleAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->scaleAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOutCircleAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd

    const/high16 v2, 0x3f80

    const v3, 0x3f8ccccd

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim1:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim1:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$2;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim1:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd

    const/high16 v2, 0x3f80

    const v3, 0x3f8ccccd

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim2:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim2:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$3;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim2:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd

    const/high16 v2, 0x3f80

    const v3, 0x3f8ccccd

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim3:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim3:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$4;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim3:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$5;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x226

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$6;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$7;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$8;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3eb33333

    const/high16 v3, 0x3f80

    const v4, 0x3eb33333

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$9;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setLayout()V
    .locals 8

    const v7, 0x10806e2

    const/4 v6, -0x1

    const/16 v5, 0x66

    const/4 v4, -0x2

    const/4 v3, 0x4

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    const v2, 0x10806e5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    const v2, 0x10806e6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    const v2, 0x10806e3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    const v2, 0x10806e4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    const v2, 0x10806e3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    const v2, 0x10806e4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    const v2, 0x10806e9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v6, v6}, Lcom/android/internal/policy/impl/CircleUnlockView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    return-void
.end method

.method public setOnCircleUnlockListener(Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

    return-void
.end method
