.class public Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLGuideLineView.java"


# static fields
.field private static final GUIDELINE_WIDTH:I = 0x2

.field private static final NUM_OF_GUIDELINES:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "TwGLGuideLine"


# instance fields
.field private mHeight:I

.field private mLine_x1:Lcom/sec/android/glview/TwGLLineTexture;

.field private mLine_x2:Lcom/sec/android/glview/TwGLLineTexture;

.field private mLine_y1:Lcom/sec/android/glview/TwGLLineTexture;

.field private mLine_y2:Lcom/sec/android/glview/TwGLLineTexture;

.field private mSideMenu_Width:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IIIZ)V
    .locals 9

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/16 v8, 0xff

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, p2

    int-to-float v5, p3

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mSideMenu_Width:I

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    int-to-float v5, v3

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLLineTexture;

    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    int-to-float v5, v3

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLLineTexture;

    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    int-to-float v4, v3

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLLineTexture;

    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    int-to-float v4, v3

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLLineTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0, p5}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setWideResolution(Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public handleGuidelineSettingsChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWideResolution(Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    div-int/lit8 v1, v4, 0x3

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    div-int/lit8 v0, v4, 0x3

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLLineTexture;

    add-int v5, v2, v0

    int-to-float v5, v5

    add-int v6, v2, v0

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    int-to-float v7, v7

    invoke-virtual {v4, v5, v8, v6, v7}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLLineTexture;

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v2

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    int-to-float v7, v7

    invoke-virtual {v4, v5, v8, v6, v7}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLLineTexture;

    int-to-float v5, v2

    int-to-float v6, v1

    add-int v7, v2, v3

    int-to-float v7, v7

    int-to-float v8, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLLineTexture;

    int-to-float v5, v2

    mul-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    add-int v7, v2, v3

    int-to-float v7, v7

    mul-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    :cond_3
    return-void

    :cond_4
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mSideMenu_Width:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mSideMenu_Width:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v3, v4, -0x2

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mSideMenu_Width:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x3

    goto :goto_0
.end method
