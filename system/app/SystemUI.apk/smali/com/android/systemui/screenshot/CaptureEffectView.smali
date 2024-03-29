.class public Lcom/android/systemui/screenshot/CaptureEffectView;
.super Landroid/view/View;
.source "CaptureEffectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;,
        Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;
    }
.end annotation


# instance fields
.field private final ANIMATION_TIME:I

.field private final GRADIENT_ALPHA:I

.field private final GRADIENT_COLOR_1:I

.field private final GRADIENT_COLOR_2:I

.field private final TAG:Ljava/lang/String;

.field private isFirst:Z

.field private mBmp:Landroid/graphics/Bitmap;

.field private mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;

.field private mDirection:I

.field private mGradientColor2:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTiltMode:Landroid/graphics/Shader$TileMode;

.field private mTranslateOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/CaptureEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v3, 0xffffff

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "CaptureEffectView"

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->TAG:Ljava/lang/String;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTiltMode:Landroid/graphics/Shader$TileMode;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->ANIMATION_TIME:I

    const v0, -0x33000001

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->GRADIENT_COLOR_1:I

    iput v3, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->GRADIENT_COLOR_2:I

    const/16 v0, 0xcc

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->GRADIENT_ALPHA:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->isFirst:Z

    iput-object v2, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mBmp:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTranslateOffset:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mDirection:I

    iput v3, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mGradientColor2:I

    iput-object v2, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/CaptureEffectView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mDirection:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/screenshot/CaptureEffectView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTranslateOffset:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/screenshot/CaptureEffectView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mGradientColor2:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/CaptureEffectView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/CaptureEffectView;->clearCaptureBitmap()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/CaptureEffectView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->isFirst:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/screenshot/CaptureEffectView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->isFirst:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/screenshot/CaptureEffectView;)Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;

    return-object v0
.end method

.method private clearCaptureBitmap()V
    .locals 2

    const-string v0, "CaptureEffectView"

    const-string v1, "clearCaptureBitmap() start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const-string v0, "CaptureEffectView"

    const-string v1, "clearCaptureBitmap() start is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mBmp:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "CaptureEffectView"

    const-string v1, "onDraw() start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const-string v0, "CaptureEffectView"

    const-string v1, "mTempRect is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const-string v0, "CaptureEffectView"

    const-string v1, "mBmp is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTranslateOffset:F

    mul-float v3, v0, v1

    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mDirection:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "CaptureEffectView"

    const-string v1, "LEFT_TO_RIGHT start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mGradientColor2:I

    const v6, -0x33000001

    iget-object v7, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTiltMode:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "CaptureEffectView"

    const-string v1, "RIGHT_TO_LEFT start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    const/4 v6, 0x0

    const v7, -0x33000001

    iget v8, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mGradientColor2:I

    iget-object v9, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTiltMode:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;

    return-void
.end method

.method public show(Landroid/graphics/Bitmap;I)V
    .locals 2

    const-string v0, "CaptureEffectView"

    const-string v1, "show() start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/screenshot/CaptureEffectView;->clearCaptureBitmap()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mBmp:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mDirection:I

    const v0, 0xffffff

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mGradientColor2:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->isFirst:Z

    new-instance v0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;-><init>(Lcom/android/systemui/screenshot/CaptureEffectView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
