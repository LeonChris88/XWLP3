.class public Lcom/sec/android/glview/TwGLProgressBar;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLProgressBar.java"


# instance fields
.field private DEFAULT_PADDING:I

.field private DEFAULT_TEXT_COLOR:I

.field private mAlpha:F

.field private mFontsize:F

.field private mGL:Lcom/sec/android/glview/TwGLContext;

.field private mHeight:F

.field private mMax:I

.field private mProgress:I

.field private mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mProgressBarText:Lcom/sec/android/glview/TwGLText;

.field private mTextinterval:I

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    iput v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iput v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_TEXT_COLOR:I

    iput-object v3, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object v3, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object v3, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    iput-object p1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    iput p4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iput p5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    move-object v1, p1

    move v3, v2

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    move-object v1, p1

    move v3, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIF)V
    .locals 9

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    const/high16 v1, 0x41a0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    const/16 v1, 0xa

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_TEXT_COLOR:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    iput-object p1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    iput p4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iput p5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mAlpha:F

    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v6, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLProgressBar;->mAlpha:F

    move-object v2, p1

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v6, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLProgressBar;->mAlpha:F

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIFIF)V
    .locals 11

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    const/high16 v1, 0x41a0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    const/16 v1, 0xa

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_TEXT_COLOR:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    iput-object p1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    iput p4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mAlpha:F

    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLProgressBar;->mAlpha:F

    move-object v2, p1

    move/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLProgressBar;->mAlpha:F

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    new-instance v1, Lcom/sec/android/glview/TwGLText;

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    sub-int/2addr v2, v5

    int-to-float v5, v2

    iget v6, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " / "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    iget v9, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_TEXT_COLOR:I

    const/4 v10, 0x1

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIF)V
    .locals 11

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    const/high16 v1, 0x41a0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    const/16 v1, 0xa

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_TEXT_COLOR:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    iput-object p1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    iput p4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    move-object v2, p1

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    new-instance v1, Lcom/sec/android/glview/TwGLText;

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    sub-int/2addr v2, v5

    int-to-float v5, v2

    iget v6, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " / "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    iget v9, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_TEXT_COLOR:I

    const/4 v10, 0x1

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLProgressBar;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->clear()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    return-void
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    return v0
.end method

.method public initSize()V
    .locals 0

    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLProgressBar;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLProgressBar;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLProgressBar;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLProgressBar;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLProgressBar;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLProgressBar;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLText;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLText;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onReset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->reset()V

    :cond_2
    return-void
.end method

.method public setCaptureProgressIncreased()V
    .locals 3

    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 3

    iput p1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setProgress(I)V
    .locals 3

    iput p1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    iput p1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iput p2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    iget v8, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_TEXT_COLOR:I

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v9, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    goto :goto_1
.end method
