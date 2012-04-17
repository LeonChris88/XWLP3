.class public Lcom/sec/android/glview/TwGLButton;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLButton.java"


# static fields
.field private static HIGHLIGHTTYPE_COLOR:I

.field private static HIGHLIGHTTYPE_NONE:I

.field private static HIGHLIGHTTYPE_RESOURCE:I


# instance fields
.field protected mButtonHeight:F

.field protected mButtonWidth:F

.field protected mDim:Z

.field protected mDimBackground:Lcom/sec/android/glview/TwGLTexture;

.field protected mDimId:I

.field protected mHighlight:Lcom/sec/android/glview/TwGLTexture;

.field protected mHighlightId:I

.field protected mHighlightType:I

.field protected mImageData:[B

.field protected mImagePath:Ljava/lang/String;

.field protected mIsNinePatchButton:Z

.field protected mMute:Z

.field protected mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

.field protected mNormalId:I

.field protected mPressed:Z

.field protected mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

.field protected mPressedId:I

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F

.field protected mShowHighlight:Z

.field protected mShowText:Z

.field protected mText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    const/4 v0, 0x2

    sput v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V
    .locals 8

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz p6, :cond_0

    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    if-eqz p7, :cond_1

    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p7}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_1
    if-eqz p8, :cond_2

    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_2
    if-eqz p9, :cond_3

    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    :cond_3
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    :cond_5
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    :cond_8
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    :cond_9
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_a
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_b
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_c
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    :cond_d
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V
    .locals 8

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz p6, :cond_0

    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    if-eqz p7, :cond_1

    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p7}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_1
    if-eqz p8, :cond_2

    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_2
    if-eqz p9, :cond_3

    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    new-instance v1, Lcom/sec/android/glview/TwGLFillRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    :cond_3
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    :cond_5
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    :cond_8
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTexture;->moveLayout(FF)V

    :cond_9
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_a
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_b
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_c
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    :cond_d
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz p6, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    iput-object p6, p0, Lcom/sec/android/glview/TwGLButton;->mImagePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF[B)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz p6, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    const/4 v7, 0x1

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF[BZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    iput-object p6, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz p4, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    :cond_0
    if-eqz p5, :cond_1

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p5}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_1
    if-eqz p6, :cond_2

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_2
    if-eqz p7, :cond_3

    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    :cond_7
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    return-void

    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V
    .locals 7

    int-to-float v4, p7

    int-to-float v5, p8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    int-to-float v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    int-to-float v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz p4, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    if-eqz p5, :cond_1

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_1
    if-eqz p6, :cond_2

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_5
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz p4, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    :cond_0
    if-eqz p5, :cond_1

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p5}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_1
    if-eqz p6, :cond_2

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_2
    if-eqz p7, :cond_3

    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/sec/android/glview/TwGLFillRectangle;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    :cond_7
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    return-void

    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLFillRectangle;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz p4, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    iput-object p4, p0, Lcom/sec/android/glview/TwGLButton;->mImagePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF[B)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz p4, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    iput-object p4, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;IIII)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz p2, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p2}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    :cond_0
    if-eqz p3, :cond_1

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p3}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_1
    if-eqz p4, :cond_2

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_2
    if-eqz p5, :cond_3

    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    :cond_7
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    return-void

    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz p2, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;[B)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz p2, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    iput-object p2, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    :cond_4
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    return-void
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLText;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    return v0
.end method

.method public initSize()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    :cond_2
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_5

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    :cond_5
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v1

    :cond_6
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v0

    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    return-void
.end method

.method public isDimmed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    return v0
.end method

.method public isPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    return v0
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLText;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onLayoutUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdate()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdate()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdate()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdate()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onLayoutUpdate()V

    :cond_4
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLText;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public onReset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->reset()V

    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    if-eqz v2, :cond_4

    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v2, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setButtonResources(IIII)V
    .locals 9

    const/high16 v8, 0x3f80

    const v7, 0x3e4ccccd

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_1
    if-eqz p2, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    if-eq v0, p2, :cond_3

    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p2}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_3
    if-eqz p3, :cond_5

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    if-eq v0, p3, :cond_5

    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p3}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_5
    if-eqz p4, :cond_8

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    if-ne v0, p4, :cond_6

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    if-eq v0, v1, :cond_8

    :cond_6
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    :cond_7
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    :cond_b
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_c
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    :cond_d
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    :cond_e
    :goto_0
    return-void

    :cond_f
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    :cond_10
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    goto :goto_0
.end method

.method public setButtonResources(IIIILandroid/graphics/Bitmap$Config;)V
    .locals 9

    const/high16 v8, 0x3f80

    const v7, 0x3e4ccccd

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_1
    if-eqz p2, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    if-eq v0, p2, :cond_3

    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p2}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_3
    if-eqz p3, :cond_5

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    if-eq v0, p3, :cond_5

    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p3}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    :cond_5
    if-eqz p4, :cond_8

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    if-ne v0, p4, :cond_6

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_COLOR:I

    if-eq v0, v1, :cond_8

    :cond_6
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    :cond_7
    new-instance v0, Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    :cond_b
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_c
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    :cond_d
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    :cond_e
    :goto_0
    return-void

    :cond_f
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    :cond_10
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    goto :goto_0
.end method

.method public setDim(Z)V
    .locals 3

    const/high16 v2, 0x3f80

    const v1, 0x3e4ccccd

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setAlpha(F)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTexture;->setAlpha(F)V

    goto :goto_0
.end method

.method public setHighlightVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    return-void
.end method

.method public setMute(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 5

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_3

    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public setSize(FF)V
    .locals 4

    const/high16 v2, 0x4000

    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    :cond_7
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    goto/16 :goto_0
.end method

.method public setText(Lcom/sec/android/glview/TwGLText;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7, v7}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    return-void
.end method

.method public setTextAlign(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    :cond_0
    return-void
.end method

.method public setTextPosition(FF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    :cond_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    return-void
.end method
