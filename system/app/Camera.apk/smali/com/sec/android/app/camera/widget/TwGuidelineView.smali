.class public Lcom/sec/android/app/camera/widget/TwGuidelineView;
.super Landroid/view/View;
.source "TwGuidelineView.java"


# static fields
.field private static final NUM_OF_GUIDELINES:I = 0x3


# instance fields
.field private mLinePaint:Landroid/graphics/Paint;

.field private mSurfaceView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const/16 v2, 0xff

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public handleGuidelineSettingsChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->showGuidelines()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->hideGuidelines()V

    goto :goto_0
.end method

.method public hideGuidelines()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->setVisibility(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v12

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    div-int/lit8 v7, v12, 0x3

    div-int/lit8 v6, v11, 0x3

    add-int v13, v9, v7

    move v14, v10

    const/4 v8, 0x1

    :goto_0
    const/4 v0, 0x3

    if-ge v8, v0, :cond_0

    int-to-float v1, v13

    int-to-float v2, v14

    int-to-float v3, v13

    add-int v0, v14, v11

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v13, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move v13, v9

    add-int/2addr v14, v6

    const/4 v8, 0x1

    :goto_1
    const/4 v0, 0x3

    if-ge v8, v0, :cond_1

    int-to-float v1, v13

    int-to-float v2, v14

    add-int v0, v13, v12

    int-to-float v3, v0

    int-to-float v4, v14

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v14, v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setSurfaceView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    return-void
.end method

.method public showGuidelines()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->invalidate()V

    return-void
.end method
