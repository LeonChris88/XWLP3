.class public Lcom/sec/android/app/camera/widget/TwScaleZoomRect;
.super Landroid/view/View;
.source "TwScaleZoomRect.java"


# static fields
.field static final LINE_WIDTH:I = 0x2

.field public static final MAX_ZOOM_LEVEL:I = 0x1e

.field public static final MAX_ZOOM_RATIO:I = 0x190

.field public static final MIN_ZOOM_RATIO:I = 0x64

.field static final TEXT_SIZE:F = 20.0f

.field public static final ZOOM_STEP:F = 10.0f


# instance fields
.field private mLastOrientation:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRect:Landroid/graphics/RectF;

.field private zoomValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    return p1
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

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;-><init>(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method init()V
    .locals 3

    const/16 v2, 0xff

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setOrientationListener()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v1, v9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v8, v9

    const/4 v3, 0x1

    const-string v9, "800x480"

    const-string v10, "400x240"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/high16 v5, 0x41a0

    :goto_0
    const/high16 v6, 0x41a0

    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    const/high16 v10, 0x4120

    div-float/2addr v9, v10

    const/high16 v10, 0x3f80

    add-float/2addr v9, v10

    mul-float/2addr v9, v5

    sub-float v2, v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    const/high16 v10, 0x4120

    div-float/2addr v9, v10

    const/high16 v10, 0x3f80

    add-float/2addr v9, v10

    mul-float/2addr v9, v5

    sub-float v7, v1, v9

    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    const/high16 v10, 0x4120

    div-float/2addr v9, v10

    const/high16 v10, 0x3f80

    add-float/2addr v9, v10

    mul-float/2addr v9, v5

    add-float v4, v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    const/high16 v10, 0x4120

    div-float/2addr v9, v10

    const/high16 v10, 0x3f80

    add-float/2addr v9, v10

    mul-float/2addr v9, v5

    add-float v0, v1, v9

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v2, v7, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mRect:Landroid/graphics/RectF;

    int-to-float v10, v3

    int-to-float v11, v3

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->inset(FF)V

    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    rsub-int v9, v9, 0x168

    int-to-float v9, v9

    add-float v10, v2, v4

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float v11, v7, v0

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mRect:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v10, v10

    const/high16 v11, 0x4120

    div-float/2addr v10, v11

    const/high16 v11, 0x3f80

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x4170

    sub-float v10, v8, v10

    add-float v11, v1, v6

    iget v12, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v12, v12

    const/high16 v13, 0x4120

    div-float/2addr v12, v13

    const/high16 v13, 0x3f80

    add-float/2addr v12, v13

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    iget-object v12, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    const/high16 v5, 0x4220

    goto/16 :goto_0
.end method

.method public setZoomValue(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    return-void
.end method
