.class public Lcom/sec/android/app/camera/widget/TwImageButton;
.super Landroid/widget/RelativeLayout;
.source "TwImageButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0x2

.field public static final ORIENTATION_270:I = 0x3

.field public static final ORIENTATION_90:I = 0x1


# instance fields
.field protected mButtonText:Landroid/widget/TextView;

.field public mDim:Z

.field protected mDimBackground:I

.field protected mDimImage:I

.field public mDisabled:Z

.field private mForward:Landroid/graphics/Matrix;

.field private final mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field protected mImageButton:Landroid/widget/ImageButton;

.field private mIsRotateAnimationEnabled:Z

.field public mLastOrientation:I

.field protected mNormalBackground:I

.field protected mNormalImage:I

.field protected mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field protected mPopupTextLayout:Landroid/widget/LinearLayout;

.field protected mPressedBackground:I

.field protected mPressedImage:I

.field private mReverse:Landroid/graphics/Matrix;

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mRotation:I

.field private final mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field protected mTextColor:I

.field protected mTextSize:F

.field private pts:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mForward:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOrientationListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x2

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x4140

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    iput v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    iput v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mForward:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    iput-object v7, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iput-object v7, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOrientationListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 7

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mForward:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;)V

    iput p2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    iput p3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    iput p4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimImage:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOrientationListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 7

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mForward:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;)V

    iput p2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    iput p3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    iput p4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimImage:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOrientationListener()V

    invoke-virtual {p0, p5}, Lcom/sec/android/app/camera/widget/TwImageButton;->setRotateAnimation(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mForward:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwImageButton;->init(Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOrientationListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mForward:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwImageButton;->init(Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOrientationListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/TwImageButton;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwImageButton;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/TwImageButton;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwImageButton;->rotateButton(II)V

    return-void
.end method

.method private rotateButton(II)V
    .locals 7

    const/16 v1, 0x10e

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    if-ne v0, v1, :cond_2

    const/16 p1, 0x168

    :cond_1
    :goto_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    rsub-int v2, p1, 0x168

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    if-nez v0, :cond_1

    const/16 v0, 0x168

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    goto :goto_1
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

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/widget/TwImageButton$1;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton$1;-><init>(Lcom/sec/android/app/camera/widget/TwImageButton;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setRotateAnimation(Z)V

    return-void
.end method


# virtual methods
.method public SetClickSoundDisabled()V
    .locals 0

    return-void
.end method

.method public SetClickSoundEnabled()V
    .locals 0

    return-void
.end method

.method protected actionInBounds(II)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getWidth()I

    move-result v1

    if-le p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getHeight()I

    move-result v1

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addTextLayout(IIIIII)V
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p5, p6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    int-to-float v2, p4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method protected createButton()V
    .locals 2

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    aget v1, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getNormalImage()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    return v0
.end method

.method public getPressedImage()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    return v0
.end method

.method public getRotateAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwImageButton:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimImage:I

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimBackground:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    if-eqz v4, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    if-eqz v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/widget/TwImageButton;->actionInBounds(II)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v4, p0, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move v1, v3

    goto :goto_0

    :pswitch_1
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->showToolTip(Z)V

    goto :goto_1

    :pswitch_2
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->showToolTip(Z)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/widget/TwImageButton;->actionInBounds(II)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_4

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, v0}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public refreshButtonImage()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public registerPopupTextLayout(Landroid/widget/LinearLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPopupTextLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->showToolTip(Z)V

    return-void
.end method

.method public setBackgroundResources(III)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    iput p2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    iput p3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimBackground:I

    return-void
.end method

.method protected setButtonImage(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setDim(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundDisabled()V

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimBackground:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundEnabled()V

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setDimBackground(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimBackground:I

    return-void
.end method

.method public setDimImage(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimImage:I

    return-void
.end method

.method public setDisabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundDisabled()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundEnabled()V

    goto :goto_0
.end method

.method public setImageResources(III)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    iput p2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    iput p3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimImage:I

    return-void
.end method

.method public setNormalBackground(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    return-void
.end method

.method public setNormalImage(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setPressed()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setPressedBackground(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    return-void
.end method

.method public setPressedImage(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    return-void
.end method

.method public setRotateAnimation(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    goto :goto_0
.end method

.method public setRotation(I)V
    .locals 5

    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mForward:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mForward:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    mul-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRight:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLeft:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mBottom:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTop:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRight:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLeft:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mBottom:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTop:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    return-void
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected showToolTip(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPopupTextLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPopupTextLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
