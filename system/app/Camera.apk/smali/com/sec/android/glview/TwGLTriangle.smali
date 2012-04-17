.class public Lcom/sec/android/glview/TwGLTriangle;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLTriangle.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_COLOR:I = 0x0

.field private static final DEFAULT_THICKNESS:I = 0x4


# instance fields
.field private mColor:I

.field private mDirection:F

.field private mHeight:F

.field private mThickness:I

.field private mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xff

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLTriangle;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V
    .locals 11

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    sget v1, Lcom/sec/android/glview/TwGLTriangle;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mColor:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mThickness:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mHeight:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mDirection:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mColor:I

    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mThickness:I

    iput p4, p0, Lcom/sec/android/glview/TwGLTriangle;->mWidth:F

    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mHeight:F

    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mDirection:F

    new-instance v1, Lcom/sec/android/glview/TwGLPolygonTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLTriangle;->mWidth:F

    iget v6, p0, Lcom/sec/android/glview/TwGLTriangle;->mHeight:F

    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/glview/TwGLTriangle;->mColor:I

    iget v9, p0, Lcom/sec/android/glview/TwGLTriangle;->mDirection:F

    iget v10, p0, Lcom/sec/android/glview/TwGLTriangle;->mThickness:I

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLPolygonTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLPolygonTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    :cond_0
    return-void
.end method

.method public initSize()V
    .locals 0

    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTriangle;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTriangle;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLPolygonTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLPolygonTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onReset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLPolygonTexture;->reset()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/glview/TwGLTriangle;->mColor:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLPolygonTexture;->setColor(I)V

    return-void
.end method

.method public setSize(FF)V
    .locals 1

    iput p1, p0, Lcom/sec/android/glview/TwGLTriangle;->mWidth:F

    iput p2, p0, Lcom/sec/android/glview/TwGLTriangle;->mHeight:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLPolygonTexture;->setSize(FF)V

    return-void
.end method

.method public setThickness(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/glview/TwGLTriangle;->mThickness:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLPolygonTexture;->setThickness(I)V

    return-void
.end method
