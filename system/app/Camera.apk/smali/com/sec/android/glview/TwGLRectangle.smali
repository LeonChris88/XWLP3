.class public Lcom/sec/android/glview/TwGLRectangle;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLRectangle.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_COLOR:I = 0x0

.field private static final DEFAULT_THICKNESS:I = 0x3


# instance fields
.field private mColor:I

.field private mHeight:F

.field private mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

.field private mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

.field private mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

.field private mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

.field private mThickness:I

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xff

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLRectangle;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    mul-int/lit8 v0, p7, 0x2

    int-to-float v0, v0

    add-float v4, p4, v0

    mul-int/lit8 v0, p7, 0x2

    int-to-float v0, v0

    add-float v5, p5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    sget v0, Lcom/sec/android/glview/TwGLRectangle;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mColor:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iput p6, p0, Lcom/sec/android/glview/TwGLRectangle;->mColor:I

    iput p7, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    iput p4, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iput p5, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iget v6, p0, Lcom/sec/android/glview/TwGLRectangle;->mColor:I

    iget v7, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/glview/TwGLRectangle;->mColor:I

    iget v7, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iget v6, p0, Lcom/sec/android/glview/TwGLRectangle;->mColor:I

    iget v7, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iget v4, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iget v6, p0, Lcom/sec/android/glview/TwGLRectangle;->mColor:I

    iget v7, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLRectangle;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLRectangle;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLRectangle;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLRectangle;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/glview/TwGLRectangle;->translateAbsolute(FF)V

    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/glview/TwGLRectangle;->mColor:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setColor(I)V

    :cond_3
    return-void
.end method

.method public setRect(FFFF)V
    .locals 5

    const/4 v4, 0x0

    iput p3, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iput p4, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    invoke-virtual {v0, v4, v4, v4, v1}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    invoke-virtual {v0, v4, v4, v1, v4}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLRectangle;->translateAbsolute(FF)V

    iget v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setSize(FF)V

    return-void
.end method

.method public setThickness(I)V
    .locals 3

    iput p1, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleLeft:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setThickness(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleTop:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setThickness(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleRight:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setThickness(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mRectangleBottom:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLLineTexture;->setThickness(I)V

    :cond_3
    iget v0, p0, Lcom/sec/android/glview/TwGLRectangle;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLRectangle;->mHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLRectangle;->mThickness:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setSize(FF)V

    return-void
.end method
