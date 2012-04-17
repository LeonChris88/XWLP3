.class public Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;
.super Landroid/widget/RelativeLayout;
.source "TwTouchFocusRectView.java"


# static fields
.field private static final DELAY_IN_MILLI:I = 0x14

.field private static final DELTA:I = 0x8

.field public static final INCR_VAL:I = 0x80

.field private static final LEFT_BOTTOM_ID:I = 0x385

.field private static final LEFT_TOP_ID:I = 0x384

.field private static final RIGHT_BOTTOM_ID:I = 0x387

.field private static final RIGHT_TOP_ID:I = 0x386


# instance fields
.field private mFocusFailImageView:Landroid/widget/ImageView;

.field private mFocusSuccessImageView:Landroid/widget/ImageView;

.field private mLeftBottomImage:I

.field private mLeftBottomImageView:Landroid/widget/ImageView;

.field private mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private mLeftTopImage:I

.field private mLeftTopImageView:Landroid/widget/ImageView;

.field private mLeftTopMargin:I

.field private mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private mPhysicalRectHeight:I

.field private mPhysicalRectWidth:I

.field private mRectDistance:I

.field private mRightBottomImage:I

.field private mRightBottomImageView:Landroid/widget/ImageView;

.field private mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private mRightTopImage:I

.field private mRightTopImageView:Landroid/widget/ImageView;

.field private mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private mShrinkHandler:Landroid/os/Handler;

.field private mShrinkRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    const/16 v0, 0x80

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;-><init>(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    const/16 v0, 0x80

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;-><init>(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    const/16 v0, 0x80

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;-><init>(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private init()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/16 v3, 0x80

    const/4 v2, -0x2

    const v0, 0x7f020020

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImage:I

    const v0, 0x7f020021

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImage:I

    const v0, 0x7f020022

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImage:I

    const v0, 0x7f020023

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImage:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    const/16 v1, 0x386

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    const/16 v1, 0x387

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    const v1, 0x7f0201be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    const v1, 0x7f0201bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public doShrink()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    add-int/lit8 v0, v0, -0x10

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getXDelta()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mPhysicalRectWidth:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getYDelta()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mPhysicalRectHeight:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public enlargeRect()V
    .locals 0

    return-void
.end method

.method public getXDelta()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getYDelta()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 5

    const/4 v4, 0x4

    const/16 v3, 0x80

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v2, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iput v3, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setPhysicalRectSize(II)V
    .locals 3

    const/4 v2, 0x4

    iput p1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mPhysicalRectWidth:I

    iput p2, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mPhysicalRectHeight:I

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getXDelta()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mPhysicalRectWidth:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getYDelta()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mPhysicalRectHeight:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showFocusFailRect()V
    .locals 4

    const/4 v1, -0x2

    const/4 v3, 0x4

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showFocusSuccessRect()V
    .locals 4

    const/4 v1, -0x2

    const/4 v3, 0x4

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public shrinkRect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
