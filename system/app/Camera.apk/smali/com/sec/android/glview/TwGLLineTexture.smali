.class public Lcom/sec/android/glview/TwGLLineTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLLineTexture.java"


# static fields
.field private static final LINE_TEXTURE_STATIC_HEIGHT:I = 0x1

.field private static final LINE_TEXTURE_STATIC_WIDTH:I = 0x1


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mColor:I

.field private mOffsetX:F

.field private mOffsetY:F

.field private mPaint:Landroid/graphics/Paint;

.field private mThickness:F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    sub-float v0, p4, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetX:F

    sub-float v0, p5, p3

    iput v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetY:F

    iput p6, p0, Lcom/sec/android/glview/TwGLLineTexture;->mColor:I

    if-ge p7, v6, :cond_0

    iput v4, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    cmpg-float v0, p2, p4

    if-gez v0, :cond_1

    move v1, p2

    :goto_1
    cmpg-float v0, p3, p5

    if-gez v0, :cond_2

    move v0, p3

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLLineTexture;->translateAbsolute(FF)V

    sub-float v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    sub-float v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_3
    sub-float v1, p5, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    sub-float v1, p5, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLLineTexture;->setSize(FF)V

    return-void

    :cond_0
    int-to-float v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    goto :goto_0

    :cond_1
    move v1, p4

    goto :goto_1

    :cond_2
    move v0, p5

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    goto :goto_3

    :cond_4
    iget v1, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    goto :goto_4
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mColor:I

    return v0
.end method

.method public getThickness()F
    .locals 1

    iget v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    return v0
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x1

    const/high16 v3, 0x3f80

    const/4 v1, 0x0

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/glview/TwGLLineTexture;->mColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLLineTexture;->mPaint:Landroid/graphics/Paint;

    move v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v6
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/glview/TwGLLineTexture;->mColor:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->reLoad()Z

    return-void
.end method

.method public setLine(FFFF)V
    .locals 3

    sub-float v0, p3, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetX:F

    sub-float v0, p4, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetY:F

    cmpg-float v0, p1, p3

    if-gez v0, :cond_0

    move v1, p1

    :goto_0
    cmpg-float v0, p2, p4

    if-gez v0, :cond_1

    move v0, p2

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLLineTexture;->translateAbsolute(FF)V

    sub-float v0, p3, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    sub-float v0, p3, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_2
    sub-float v1, p4, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    sub-float v1, p4, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLLineTexture;->setSize(FF)V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->setVertices()V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->initBuffers()V

    return-void

    :cond_0
    move v1, p3

    goto :goto_0

    :cond_1
    move v0, p4

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    goto :goto_3
.end method

.method public setThickness(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->reLoad()Z

    return-void
.end method

.method protected declared-synchronized setVertices()V
    .locals 12

    const/high16 v11, 0x4000

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    if-nez v6, :cond_0

    const/16 v6, 0xc

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    :cond_0
    const/4 v6, 0x2

    new-array v2, v6, [F

    iget v6, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetY:F

    iget v7, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    add-float v5, v6, v7

    iget v6, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetX:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetX:F

    iget v7, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetY:F

    float-to-double v7, v7

    iget v9, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetX:F

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    neg-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    add-float v5, v6, v7

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getRight()F

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getLeft()F

    move-result v8

    sub-float/2addr v7, v8

    sub-float v7, v5, v7

    iget v8, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v11

    sub-float v3, v6, v7

    add-float v4, v3, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getTop()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getBottom()F

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getTop()F

    move-result v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v11

    add-float v0, v6, v7

    iget v6, p0, Lcom/sec/android/glview/TwGLLineTexture;->mThickness:F

    add-float v1, v0, v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-static {v6, v2, v3, v0}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v2, v8

    aput v8, v6, v7

    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v2, v8

    aput v8, v6, v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-static {v6, v2, v3, v1}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v7, 0x3

    const/4 v8, 0x0

    aget v8, v2, v8

    aput v8, v6, v7

    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v7, 0x4

    const/4 v8, 0x1

    aget v8, v2, v8

    aput v8, v6, v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-static {v6, v2, v4, v0}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v7, 0x6

    const/4 v8, 0x0

    aget v8, v2, v8

    aput v8, v6, v7

    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v7, 0x7

    const/4 v8, 0x1

    aget v8, v2, v8

    aput v8, v6, v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLLineTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-static {v6, v2, v4, v1}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/16 v7, 0x9

    const/4 v8, 0x0

    aget v8, v2, v8

    aput v8, v6, v7

    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/16 v7, 0xa

    const/4 v8, 0x1

    aget v8, v2, v8

    aput v8, v6, v7

    iget v6, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetY:F

    float-to-double v6, v6

    iget v8, p0, Lcom/sec/android/glview/TwGLLineTexture;->mOffsetX:F

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/glview/TwGLLineTexture;->rotateDegree(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
